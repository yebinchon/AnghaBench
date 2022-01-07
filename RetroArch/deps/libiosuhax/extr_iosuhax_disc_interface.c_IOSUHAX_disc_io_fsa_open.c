
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSA_REF_SD ;
 int FSA_REF_USB ;
 scalar_t__ IOSUHAX_FSA_Open () ;
 scalar_t__ IOSUHAX_Open (int *) ;
 int IOSUHAX_disc_io_initialize () ;
 scalar_t__ fsaFdSd ;
 scalar_t__ fsaFdUsb ;

__attribute__((used)) static bool IOSUHAX_disc_io_fsa_open(int fsaFd)
{
    IOSUHAX_disc_io_initialize();

    if(IOSUHAX_Open(((void*)0)) < 0)
        return 0;

    if(fsaFd == FSA_REF_SD)
    {
        if(fsaFdSd < 0)
        {
            fsaFdSd = IOSUHAX_FSA_Open();
        }

        if(fsaFdSd >= 0)
            return 1;
    }
    else if(fsaFd == FSA_REF_USB)
    {
        if(fsaFdUsb < 0)
        {
            fsaFdUsb = IOSUHAX_FSA_Open();
        }

        if(fsaFdUsb >= 0)
            return 1;
    }

    return 0;
}
