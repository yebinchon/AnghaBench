
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSA_REF_SD ;
 int IOSUHAX_FSA_RawOpen (int ,char*,int*) ;
 int IOSUHAX_disc_io_fsa_close (int ) ;
 int IOSUHAX_disc_io_fsa_open (int ) ;
 int fsaFdSd ;
 int sdioFd ;

__attribute__((used)) static bool IOSUHAX_sdio_startup(void)
{
    if(!IOSUHAX_disc_io_fsa_open(FSA_REF_SD))
        return 0;

    if(sdioFd < 0)
    {
        int res = IOSUHAX_FSA_RawOpen(fsaFdSd, "/dev/sdcard01", &sdioFd);
        if(res < 0)
        {
            IOSUHAX_disc_io_fsa_close(FSA_REF_SD);
            sdioFd = -1;
        }
    }

    return (sdioFd >= 0);
}
