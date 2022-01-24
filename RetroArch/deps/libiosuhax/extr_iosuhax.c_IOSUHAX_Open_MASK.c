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
 int /*<<< orphan*/  IOCTL_CHECK_IF_IOSUHAX ; 
 unsigned int IOSUHAX_MAGIC_WORD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,unsigned int*,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int iosuhaxHandle ; 

int FUNC3(const char *dev)
{
    if(iosuhaxHandle >= 0)
        return iosuhaxHandle;

    iosuhaxHandle = FUNC2((char*)(dev ? dev : "/dev/iosuhax"), 0);
    if(iosuhaxHandle >= 0 && dev) /* make sure device is actually iosuhax */
    {
        unsigned int res = 0;
        FUNC1(iosuhaxHandle, IOCTL_CHECK_IF_IOSUHAX, (void*)0, 0, &res, 4);
        if(res != IOSUHAX_MAGIC_WORD)
        {
            FUNC0(iosuhaxHandle);
            iosuhaxHandle = -1;
        }
    }

    return iosuhaxHandle;
}