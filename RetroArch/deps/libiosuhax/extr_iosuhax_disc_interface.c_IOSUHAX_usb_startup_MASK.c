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

/* Variables and functions */
 int /*<<< orphan*/  FSA_REF_USB ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsaFdUsb ; 
 int usbFd ; 

__attribute__((used)) static bool FUNC3(void)
{
    if(!FUNC2(FSA_REF_USB))
        return false;

    if(usbFd < 0)
    {
        int res = FUNC0(fsaFdUsb, "/dev/usb01", &usbFd);
        if(res < 0)
        {
            res = FUNC0(fsaFdUsb, "/dev/usb02", &usbFd);
            if(res < 0)
            {
                FUNC1(FSA_REF_USB);
                usbFd = -1;
            }
        }
    }
    return (usbFd >= 0);
}