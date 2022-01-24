#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dbginterface {int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  wait; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  fhndl; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct dbginterface usb_device ; 
 int /*<<< orphan*/  usbclose ; 
 int /*<<< orphan*/  usbopen ; 
 int /*<<< orphan*/  usbread ; 
 int /*<<< orphan*/  usbwait ; 
 int /*<<< orphan*/  usbwrite ; 

struct dbginterface* FUNC2(s32 channel)
{
	usb_device.fhndl = channel;
	if(FUNC1(channel))
		FUNC0(channel);

	usb_device.open = usbopen;
	usb_device.close = usbclose;
	usb_device.wait = usbwait;
	usb_device.read = usbread;
	usb_device.write = usbwrite;

	return &usb_device;
}