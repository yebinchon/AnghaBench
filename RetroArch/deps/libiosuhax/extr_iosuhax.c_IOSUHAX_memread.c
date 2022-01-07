
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int address ;


 int IOCTL_MEM_READ ;
 int IOS_Ioctl (scalar_t__,int ,int *,int,int *,int ) ;
 scalar_t__ iosuhaxHandle ;

int IOSUHAX_memread(uint32_t address, uint8_t * out_buffer, uint32_t size)
{
    if(iosuhaxHandle < 0)
        return iosuhaxHandle;

    if(!out_buffer || !size)
        return -1;

    return IOS_Ioctl(iosuhaxHandle, IOCTL_MEM_READ, &address, sizeof(address), out_buffer, size);
}
