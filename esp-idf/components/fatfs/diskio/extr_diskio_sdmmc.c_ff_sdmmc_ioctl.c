
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sector_size; int capacity; } ;
struct TYPE_6__ {TYPE_1__ csd; } ;
typedef TYPE_2__ sdmmc_card_t ;
typedef int WORD ;
typedef int DWORD ;
typedef int DRESULT ;
typedef size_t BYTE ;






 int RES_ERROR ;
 int RES_OK ;
 int assert (TYPE_2__*) ;
 TYPE_2__** s_cards ;

DRESULT ff_sdmmc_ioctl (BYTE pdrv, BYTE cmd, void* buff)
{
    sdmmc_card_t* card = s_cards[pdrv];
    assert(card);
    switch(cmd) {
        case 131:
            return RES_OK;
        case 129:
            *((DWORD*) buff) = card->csd.capacity;
            return RES_OK;
        case 128:
            *((WORD*) buff) = card->csd.sector_size;
            return RES_OK;
        case 130:
            return RES_ERROR;
    }
    return RES_ERROR;
}
