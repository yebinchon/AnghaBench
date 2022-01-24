#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; size_t bNumEndpoints; scalar_t__ bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; TYPE_2__* endpoints; } ;
typedef  TYPE_1__ usb_interfacedesc ;
struct TYPE_8__ {scalar_t__ bmAttributes; int bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
typedef  TYPE_2__ usb_endpointdesc ;
struct ukbd {int fd; scalar_t__ vid; scalar_t__ pid; size_t configuration; scalar_t__ altInterface; int ep; int connected; int /*<<< orphan*/  interface; int /*<<< orphan*/  ep_size; int /*<<< orphan*/  cb; int /*<<< orphan*/  device_id; } ;
typedef  struct ukbd usb_device_entry ;
struct TYPE_9__ {size_t bNumConfigurations; TYPE_4__* configurations; } ;
typedef  TYPE_3__ usb_devdesc ;
struct TYPE_10__ {size_t bNumInterfaces; size_t bConfigurationValue; TYPE_1__* interfaces; } ;
typedef  TYPE_4__ usb_configurationdesc ;
typedef  size_t u8 ;
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  eventcallback ;

/* Variables and functions */
 int DEVLIST_MAXSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ USB_CLASS_HID ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int USB_ENDPOINT_IN ; 
 scalar_t__ USB_ENDPOINT_INTERRUPT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int,size_t*) ; 
 scalar_t__ FUNC5 (int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (struct ukbd*,int,scalar_t__,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*) ; 
 scalar_t__ USB_PROTOCOL_KEYBOARD ; 
 scalar_t__ USB_SUBCLASS_BOOT ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int,size_t) ; 
 int /*<<< orphan*/  _disconnect ; 
 int FUNC10 () ; 
 struct ukbd* _kbd ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hId ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ukbd*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ukbd*,int /*<<< orphan*/ ,int) ; 

s32 FUNC16(const eventcallback cb)
{
	usb_device_entry *buffer;
	u8 device_count, i, conf;
	u16 vid, pid;
	bool found = false;
	u32 iConf, iInterface, iEp;
	usb_devdesc udd;
	usb_configurationdesc *ucd;
	usb_interfacedesc *uid;
	usb_endpointdesc *ued;

	buffer = (usb_device_entry*)FUNC12(hId, DEVLIST_MAXSIZE * sizeof(usb_device_entry));
	if(buffer == NULL)
		return -1;

	FUNC15(buffer, 0, DEVLIST_MAXSIZE * sizeof(usb_device_entry));

	if (FUNC6(buffer, DEVLIST_MAXSIZE, USB_CLASS_HID, &device_count) < 0)
	{
		FUNC13(hId, buffer);
		return -2;
	}

	if (_kbd) {
		if (_kbd->fd != -1) FUNC1(&_kbd->fd);
	} else {
		_kbd = (struct ukbd *) FUNC14(sizeof(struct ukbd));

		if (!_kbd)
			return -1;
	}

	FUNC15(_kbd, 0, sizeof(struct ukbd));
	_kbd->fd = -1;

	for (i = 0; i < device_count; i++)
	{
		vid = buffer[i].vid;;
		pid = buffer[i].pid;

		if ((vid == 0) || (pid == 0))
			continue;

		s32 fd = 0;
		if (FUNC7(buffer[i].device_id, vid, pid, &fd) < 0)
			continue;

		if (FUNC5(fd, &udd) < 0) {
			FUNC1(&fd);
			continue;
		}

		for(iConf = 0; iConf < udd.bNumConfigurations; iConf++)
		{
			ucd = &udd.configurations[iConf];

			for(iInterface = 0; iInterface < ucd->bNumInterfaces; iInterface++)
			{
				uid = &ucd->interfaces[iInterface];

				if ((uid->bInterfaceClass == USB_CLASS_HID) &&
					(uid->bInterfaceSubClass == USB_SUBCLASS_BOOT) &&
					(uid->bInterfaceProtocol== USB_PROTOCOL_KEYBOARD))
				{
					for(iEp = 0; iEp < uid->bNumEndpoints; iEp++)
					{
						ued = &uid->endpoints[iEp];

						if (ued->bmAttributes != USB_ENDPOINT_INTERRUPT)
							continue;

						if (!(ued->bEndpointAddress & USB_ENDPOINT_IN))
							continue;

						_kbd->fd = fd;
						_kbd->cb = cb;

						_kbd->configuration = ucd->bConfigurationValue;
						_kbd->interface = uid->bInterfaceNumber;
						_kbd->altInterface = uid->bAlternateSetting;

						_kbd->ep = ued->bEndpointAddress;
						_kbd->ep_size = ued->wMaxPacketSize;

						found = true;

						break;
					}
				}

				if (found)
					break;
			}

			if (found)
				break;
		}

		FUNC3(&udd);

		if (found)
			break;
		else
			FUNC1(&fd);
	}

	FUNC13(hId, buffer);

	if (!found)
		return -3;

	if (FUNC4(_kbd->fd, &conf) < 0)
	{
		FUNC0();
		return -4;
	}

	if (conf != _kbd->configuration &&
		FUNC9(_kbd->fd, _kbd->configuration) < 0)
	{
		FUNC0();
		return -5;
	}

	if (_kbd->altInterface != 0 &&
		FUNC8(_kbd->fd, _kbd->interface, _kbd->altInterface) < 0)
	{
		FUNC0();
		return -6;
	}

	if (FUNC10() != 0)
	{
		if (FUNC11(0) < 0)
		{
			FUNC0();
			return -6;
		}

		if (FUNC10() == 1)
		{
			FUNC0();
			return -7;
		}
	}

	if (FUNC2(_kbd->fd, &_disconnect, NULL) < 0)
	{
		FUNC0();
		return -8;
	}

	_kbd->connected = true;

	return 1;
}