
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int result ;


 int IOCTL_FSA_RAW_WRITE ;
 int IOS_Ioctl (scalar_t__,int ,int*,int,int*,int) ;
 int free (int*) ;
 scalar_t__ iosuhaxHandle ;
 scalar_t__ memalign (int,int) ;
 int memcpy (int *,void const*,int) ;

int IOSUHAX_FSA_RawWrite(int fsaFd, const void* data, uint32_t block_size, uint32_t block_cnt, uint64_t sector_offset, int device_handle)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!data)
        return -1;

    const int input_cnt = 6;

    int io_buf_size = ((sizeof(uint32_t) * input_cnt + block_size * block_cnt + 0x40) + 0x3F) & ~0x3F;

    uint32_t *io_buf = (uint32_t*)memalign(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = block_size;
    io_buf[2] = block_cnt;
    io_buf[3] = (sector_offset >> 32) & 0xFFFFFFFF;
    io_buf[4] = sector_offset & 0xFFFFFFFF;
    io_buf[5] = device_handle;


    memcpy(((uint8_t*)io_buf) + 0x40, data, block_size * block_cnt);

    int result;

    int res = IOS_Ioctl(iosuhaxHandle, IOCTL_FSA_RAW_WRITE, io_buf, io_buf_size, &result, sizeof(result));
    if(res < 0)
    {
        free(io_buf);
        return res;
    }

    free(io_buf);
    return result;
}
