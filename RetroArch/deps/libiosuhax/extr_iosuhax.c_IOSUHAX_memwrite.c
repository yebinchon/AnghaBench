
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int IOCTL_MEM_WRITE ;
 int IOS_Ioctl (scalar_t__,int ,scalar_t__*,scalar_t__,int ,int ) ;
 int free (scalar_t__*) ;
 scalar_t__ iosuhaxHandle ;
 scalar_t__ memalign (int,scalar_t__) ;
 int memcpy (scalar_t__*,int const*,scalar_t__) ;

int IOSUHAX_memwrite(uint32_t address, const uint8_t * buffer, uint32_t size)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!buffer)
        return -1;

    uint32_t *io_buf = (uint32_t*)memalign(0x20, size + 4);
    if(!io_buf)
        return -2;

    io_buf[0] = address;
    memcpy(io_buf + 1, buffer, size);

    int res = IOS_Ioctl(iosuhaxHandle, IOCTL_MEM_WRITE, io_buf, size + 4, 0, 0);

    free(io_buf);
    return res;
}
