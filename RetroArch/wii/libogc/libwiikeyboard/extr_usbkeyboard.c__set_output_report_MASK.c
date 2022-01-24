#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int s32 ;
struct TYPE_2__ {int fd; int /*<<< orphan*/  interface; int /*<<< orphan*/  leds; } ;

/* Variables and functions */
 int USB_REPTYPE_OUTPUT ; 
 int /*<<< orphan*/  USB_REQTYPE_INTERFACE_SET ; 
 int /*<<< orphan*/  USB_REQ_SETREPORT ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* _kbd ; 
 int /*<<< orphan*/  hId ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static s32 FUNC4(void)
{
	u8 *buffer = 0;
	if(!_kbd || _kbd->fd==-1) return -1;
	buffer = FUNC1(hId, 1);

	if (buffer == NULL)
		return -1;

	FUNC3(buffer, &_kbd->leds, 1);
	s32 ret = FUNC0(_kbd->fd, USB_REQTYPE_INTERFACE_SET, USB_REQ_SETREPORT, USB_REPTYPE_OUTPUT << 8, _kbd->interface, 1, buffer);

	FUNC2(hId, buffer);

	return ret;
}