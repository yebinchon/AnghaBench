
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSA_REF_USB ;
 int IOSUHAX_FSA_RawClose (int ,int) ;
 int IOSUHAX_disc_io_fsa_close (int ) ;
 int IOSUHAX_usb_isInserted () ;
 int fsaFdUsb ;
 int usbFd ;

__attribute__((used)) static bool IOSUHAX_usb_shutdown(void)
{
    if(!IOSUHAX_usb_isInserted())
        return 0;

    IOSUHAX_FSA_RawClose(fsaFdUsb, usbFd);
    IOSUHAX_disc_io_fsa_close(FSA_REF_USB);
    usbFd = -1;
    return 1;
}
