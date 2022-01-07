
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsaFdSd ;
 int fsaFdUsb ;
 int initialized ;
 int sdioFd ;
 int usbFd ;

__attribute__((used)) static void IOSUHAX_disc_io_initialize(void)
{
    if(initialized == 0)
    {
        initialized = 1;
        fsaFdSd = -1;
        fsaFdUsb = -1;
        sdioFd = -1;
        usbFd = -1;
    }
}
