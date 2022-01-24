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
typedef  int /*<<< orphan*/  fileStat_s ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_FSA_STATFILE ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ iosuhaxHandle ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 

int FUNC4(int fsaFd, int fileHandle, fileStat_s* out_data)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!out_data)
        return -1;

    const int input_cnt = 2;

    int io_buf_size = sizeof(uint32_t) * input_cnt;

    uint32_t *io_buf = (uint32_t*)FUNC2(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = fileHandle;

    int out_buf_size = 4 + sizeof(fileStat_s);
    uint32_t *out_buffer = (uint32_t*)FUNC2(0x20, out_buf_size);
    if(!out_buffer)
    {
        FUNC1(io_buf);
        return -2;
    }

    int res = FUNC0(iosuhaxHandle, IOCTL_FSA_STATFILE, io_buf, io_buf_size, out_buffer, out_buf_size);
    if(res < 0)
    {
        FUNC1(io_buf);
        FUNC1(out_buffer);
        return res;
    }

    int result = out_buffer[0];
    FUNC3(out_data, out_buffer + 1, sizeof(fileStat_s));

    FUNC1(io_buf);
    FUNC1(out_buffer);
    return result;
}