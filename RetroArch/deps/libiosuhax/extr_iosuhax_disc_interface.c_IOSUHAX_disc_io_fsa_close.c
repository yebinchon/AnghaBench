
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSA_REF_SD ;
 int FSA_REF_USB ;
 int IOSUHAX_FSA_Close (int) ;
 int fsaFdSd ;
 int fsaFdUsb ;

__attribute__((used)) static void IOSUHAX_disc_io_fsa_close(int fsaFd)
{
    if(fsaFd == FSA_REF_SD)
    {
        if(fsaFdSd >= 0)
        {
            IOSUHAX_FSA_Close(fsaFdSd);
            fsaFdSd = -1;
        }
    }
    else if(fsaFd == FSA_REF_USB)
    {
        if(fsaFdUsb >= 0)
        {
            IOSUHAX_FSA_Close(fsaFdUsb);
            fsaFdUsb = -1;
        }
    }
}
