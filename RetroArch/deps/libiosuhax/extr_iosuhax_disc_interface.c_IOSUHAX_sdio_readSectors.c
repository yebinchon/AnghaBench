
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IOSUHAX_FSA_RawRead (int ,void*,int,int ,int ,int ) ;
 int IOSUHAX_sdio_isInserted () ;
 int fsaFdSd ;
 int sdioFd ;

__attribute__((used)) static bool IOSUHAX_sdio_readSectors(uint32_t sector, uint32_t numSectors, void* buffer)
{
    if(!IOSUHAX_sdio_isInserted() || !buffer)
        return 0;

    int res = IOSUHAX_FSA_RawRead(fsaFdSd, buffer, 512, numSectors, sector, sdioFd);
    if(res < 0)
    {
        return 0;
    }

    return 1;
}
