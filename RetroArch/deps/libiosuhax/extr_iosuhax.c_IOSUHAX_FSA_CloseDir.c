
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int result ;


 int IOCTL_FSA_CLOSEDIR ;
 int IOS_Ioctl (scalar_t__,int ,int*,int,int*,int) ;
 int free (int*) ;
 scalar_t__ iosuhaxHandle ;
 scalar_t__ memalign (int,int) ;

int IOSUHAX_FSA_CloseDir(int fsaFd, int handle)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    const int input_cnt = 2;

    int io_buf_size = sizeof(uint32_t) * input_cnt;

    uint32_t *io_buf = (uint32_t*)memalign(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = handle;

    int result;

    int res = IOS_Ioctl(iosuhaxHandle, IOCTL_FSA_CLOSEDIR, io_buf, io_buf_size, &result, sizeof(result));
    if(res < 0)
    {
        free(io_buf);
        return res;
    }

    free(io_buf);
    return result;
}
