
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSA_REF_SD ;
 int IOSUHAX_FSA_RawClose (int ,int) ;
 int IOSUHAX_disc_io_fsa_close (int ) ;
 int IOSUHAX_sdio_isInserted () ;
 int fsaFdSd ;
 int sdioFd ;

__attribute__((used)) static bool IOSUHAX_sdio_shutdown(void)
{
    if(!IOSUHAX_sdio_isInserted())
        return 0;

    IOSUHAX_FSA_RawClose(fsaFdSd, sdioFd);
    IOSUHAX_disc_io_fsa_close(FSA_REF_SD);
    sdioFd = -1;
    return 1;
}
