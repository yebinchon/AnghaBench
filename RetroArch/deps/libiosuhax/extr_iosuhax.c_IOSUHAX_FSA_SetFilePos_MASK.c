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
 int /*<<< orphan*/  IOCTL_FSA_SETFILEPOS ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ iosuhaxHandle ; 
 scalar_t__ FUNC2 (int,int) ; 

int FUNC3(int fsaFd, int fileHandle, uint32_t position)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    const int input_cnt = 3;

    int io_buf_size = sizeof(uint32_t) * input_cnt;

    uint32_t *io_buf = (uint32_t*)FUNC2(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = fileHandle;
    io_buf[2] = position;

    int result;

    int res = FUNC0(iosuhaxHandle, IOCTL_FSA_SETFILEPOS, io_buf, io_buf_size, &result, sizeof(result));
    if(res < 0)
    {
        FUNC1(io_buf);
        return res;
    }

    FUNC1(io_buf);
    return result;
}