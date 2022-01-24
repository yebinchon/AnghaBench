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
typedef  int /*<<< orphan*/  result_vec ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_FSA_OPENFILE ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ iosuhaxHandle ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

int FUNC5(int fsaFd, const char* path, const char* mode, int* outHandle)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!path || !mode || !outHandle)
        return -1;

    const int input_cnt = 3;

    int io_buf_size = sizeof(uint32_t) * input_cnt + FUNC4(path) + FUNC4(mode) + 2;

    uint32_t *io_buf = (uint32_t*)FUNC2(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = sizeof(uint32_t) * input_cnt;
    io_buf[2] = io_buf[1] + FUNC4(path) + 1;
    FUNC3(((char*)io_buf) + io_buf[1],  path);
    FUNC3(((char*)io_buf) + io_buf[2],  mode);

    int result_vec[2];

    int res = FUNC0(iosuhaxHandle, IOCTL_FSA_OPENFILE, io_buf, io_buf_size, result_vec, sizeof(result_vec));
    if(res < 0)
    {
        FUNC1(io_buf);
        return res;
    }

    *outHandle = result_vec[1];
    FUNC1(io_buf);
    return result_vec[0];
}