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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  result ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_SVC ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 scalar_t__ iosuhaxHandle ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 

int FUNC2(uint32_t svc_id, uint32_t * args, uint32_t arg_cnt)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    uint32_t arguments[9];
    arguments[0] = svc_id;

    if(args && arg_cnt)
    {
        if(arg_cnt > 8)
            arg_cnt = 8;

        FUNC1(arguments + 1, args, arg_cnt * 4);
    }

    int result;
    int ret = FUNC0(iosuhaxHandle, IOCTL_SVC, arguments, (1 + arg_cnt) * 4, &result, sizeof(result));
    if(ret < 0)
        return ret;

    return result;
}