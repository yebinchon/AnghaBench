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
 int /*<<< orphan*/  IOCTL_FSA_UNMOUNT ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ iosuhaxHandle ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

int FUNC5(int fsaFd, const char* path, uint32_t flags)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!path)
        return -1;

    const int input_cnt = 3;

    int io_buf_size = sizeof(uint32_t) * input_cnt + FUNC4(path) + 1;

    uint32_t *io_buf = (uint32_t*)FUNC2(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = sizeof(uint32_t) * input_cnt;
    io_buf[2] = flags;
    FUNC3(((char*)io_buf) + io_buf[1],  path);

    int result;

    int res = FUNC0(iosuhaxHandle, IOCTL_FSA_UNMOUNT, io_buf, io_buf_size, &result, sizeof(result));
    if(res < 0)
    {
        FUNC1(io_buf);
        return res;
    }

    FUNC1(io_buf);
    return result;
}