
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int fileStat_s ;


 int IOCTL_FSA_STATFILE ;
 int IOS_Ioctl (scalar_t__,int ,int*,int,int*,int) ;
 int free (int*) ;
 scalar_t__ iosuhaxHandle ;
 scalar_t__ memalign (int,int) ;
 int memcpy (int *,int*,int) ;

int IOSUHAX_FSA_StatFile(int fsaFd, int fileHandle, fileStat_s* out_data)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!out_data)
        return -1;

    const int input_cnt = 2;

    int io_buf_size = sizeof(uint32_t) * input_cnt;

    uint32_t *io_buf = (uint32_t*)memalign(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    io_buf[0] = fsaFd;
    io_buf[1] = fileHandle;

    int out_buf_size = 4 + sizeof(fileStat_s);
    uint32_t *out_buffer = (uint32_t*)memalign(0x20, out_buf_size);
    if(!out_buffer)
    {
        free(io_buf);
        return -2;
    }

    int res = IOS_Ioctl(iosuhaxHandle, IOCTL_FSA_STATFILE, io_buf, io_buf_size, out_buffer, out_buf_size);
    if(res < 0)
    {
        free(io_buf);
        free(out_buffer);
        return res;
    }

    int result = out_buffer[0];
    memcpy(out_data, out_buffer + 1, sizeof(fileStat_s));

    free(io_buf);
    free(out_buffer);
    return result;
}
