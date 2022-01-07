
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSA_REF_USB ;
 int IOSUHAX_FSA_RawOpen (int ,char*,int*) ;
 int IOSUHAX_disc_io_fsa_close (int ) ;
 int IOSUHAX_disc_io_fsa_open (int ) ;
 int fsaFdUsb ;
 int usbFd ;

__attribute__((used)) static bool IOSUHAX_usb_startup(void)
{
    if(!IOSUHAX_disc_io_fsa_open(FSA_REF_USB))
        return 0;

    if(usbFd < 0)
    {
        int res = IOSUHAX_FSA_RawOpen(fsaFdUsb, "/dev/usb01", &usbFd);
        if(res < 0)
        {
            res = IOSUHAX_FSA_RawOpen(fsaFdUsb, "/dev/usb02", &usbFd);
            if(res < 0)
            {
                IOSUHAX_disc_io_fsa_close(FSA_REF_USB);
                usbFd = -1;
            }
        }
    }
    return (usbFd >= 0);
}
