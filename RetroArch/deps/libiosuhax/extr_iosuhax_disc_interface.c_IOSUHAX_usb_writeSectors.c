
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IOSUHAX_FSA_RawWrite (int ,void const*,int,int ,int ,int ) ;
 int IOSUHAX_usb_isInserted () ;
 int fsaFdUsb ;
 int usbFd ;

__attribute__((used)) static bool IOSUHAX_usb_writeSectors(uint32_t sector, uint32_t numSectors, const void* buffer)
{
    if(!IOSUHAX_usb_isInserted() || !buffer)
        return 0;

    int res = IOSUHAX_FSA_RawWrite(fsaFdUsb, buffer, 512, numSectors, sector, usbFd);
    if(res < 0)
    {
        return 0;
    }

    return 1;
}
