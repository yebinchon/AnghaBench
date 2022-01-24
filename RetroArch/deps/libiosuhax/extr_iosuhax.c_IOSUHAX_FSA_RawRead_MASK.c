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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_FSA_RAW_READ ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ iosuhaxHandle ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 

int FUNC4(int fsaFd, void* data, uint32_t block_size, uint32_t block_cnt, uint64_t sector_offset, int device_handle)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!data)
        return -1;

    const int input_cnt = 6;

    int io_buf_size = sizeof(uint32_t) * input_cnt;

    uint32_t *io_buf = (uint32_t*)FUNC2(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = block_size;
    io_buf[2] = block_cnt;
    io_buf[3] = (sector_offset >> 32) & 0xFFFFFFFF;
    io_buf[4] = sector_offset & 0xFFFFFFFF;
    io_buf[5] = device_handle;

    int out_buf_size = ((block_size * block_cnt + 0x40) + 0x3F) & ~0x3F;

    uint32_t *out_buffer = (uint32_t*)FUNC2(0x40, out_buf_size);
    if(!out_buffer)
    {
        FUNC1(io_buf);
        return -2;
    }

    int res = FUNC0(iosuhaxHandle, IOCTL_FSA_RAW_READ, io_buf, io_buf_size, out_buffer, out_buf_size);
    if(res < 0)
    {
        FUNC1(out_buffer);
        FUNC1(io_buf);
        return res;
    }

    /* ! data is put to offset 0x40 to align the buffer output */
    FUNC3(data, ((uint8_t*)out_buffer) + 0x40, block_size * block_cnt);

    int result = out_buffer[0];

    FUNC1(out_buffer);
    FUNC1(io_buf);
    return result;
}