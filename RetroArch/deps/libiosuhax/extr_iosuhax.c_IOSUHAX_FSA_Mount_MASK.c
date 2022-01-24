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
typedef  int /*<<< orphan*/  mountRes ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_FSA_MOUNT ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ iosuhaxHandle ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 

int FUNC7(int fsaFd, const char* device_path, const char* volume_path, uint32_t flags, const char* arg_string, int arg_string_len)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!device_path || !volume_path || !arg_string)
        return -1;

    const int input_cnt = 6;

    int io_buf_size = (sizeof(uint32_t) * input_cnt) + FUNC6(device_path) + FUNC6(volume_path) + arg_string_len + 3;

    uint32_t *io_buf = (uint32_t*)FUNC2(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    FUNC4(io_buf, 0, io_buf_size);
    io_buf[0] = fsaFd;
    io_buf[1] = sizeof(uint32_t) * input_cnt;
    io_buf[2] = io_buf[1] + FUNC6(device_path) + 1;
    io_buf[3] = flags;
    io_buf[4] = arg_string_len ? ( io_buf[2] + FUNC6(volume_path) + 1) : 0;
    io_buf[5] = arg_string_len;

    FUNC5(((char*)io_buf) + io_buf[1],  device_path);
    FUNC5(((char*)io_buf) + io_buf[2],  volume_path);

    if(arg_string_len)
        FUNC3(((char*)io_buf) + io_buf[4],  arg_string, arg_string_len);

    int mountRes;

    int res = FUNC0(iosuhaxHandle, IOCTL_FSA_MOUNT, io_buf, io_buf_size, &mountRes, sizeof(mountRes));
    if(res < 0)
    {
        FUNC1(io_buf);
        return res;
    }

    FUNC1(io_buf);
    return mountRes;
}