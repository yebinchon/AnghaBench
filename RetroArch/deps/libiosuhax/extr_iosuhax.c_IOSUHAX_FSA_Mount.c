
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mountRes ;


 int IOCTL_FSA_MOUNT ;
 int IOS_Ioctl (scalar_t__,int ,int*,int,int*,int) ;
 int free (int*) ;
 scalar_t__ iosuhaxHandle ;
 scalar_t__ memalign (int,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (int*,int ,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

int IOSUHAX_FSA_Mount(int fsaFd, const char* device_path, const char* volume_path, uint32_t flags, const char* arg_string, int arg_string_len)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!device_path || !volume_path || !arg_string)
        return -1;

    const int input_cnt = 6;

    int io_buf_size = (sizeof(uint32_t) * input_cnt) + strlen(device_path) + strlen(volume_path) + arg_string_len + 3;

    uint32_t *io_buf = (uint32_t*)memalign(0x20, io_buf_size);
    if(!io_buf)
        return -2;

    memset(io_buf, 0, io_buf_size);
    io_buf[0] = fsaFd;
    io_buf[1] = sizeof(uint32_t) * input_cnt;
    io_buf[2] = io_buf[1] + strlen(device_path) + 1;
    io_buf[3] = flags;
    io_buf[4] = arg_string_len ? ( io_buf[2] + strlen(volume_path) + 1) : 0;
    io_buf[5] = arg_string_len;

    strcpy(((char*)io_buf) + io_buf[1], device_path);
    strcpy(((char*)io_buf) + io_buf[2], volume_path);

    if(arg_string_len)
        memcpy(((char*)io_buf) + io_buf[4], arg_string, arg_string_len);

    int mountRes;

    int res = IOS_Ioctl(iosuhaxHandle, IOCTL_FSA_MOUNT, io_buf, io_buf_size, &mountRes, sizeof(mountRes));
    if(res < 0)
    {
        free(io_buf);
        return res;
    }

    free(io_buf);
    return mountRes;
}
