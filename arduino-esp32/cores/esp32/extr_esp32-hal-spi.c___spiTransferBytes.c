
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {TYPE_4__* dev; } ;
typedef TYPE_5__ spi_t ;
struct TYPE_9__ {int usr; } ;
struct TYPE_8__ {int usr_miso_dbitlen; } ;
struct TYPE_7__ {int usr_mosi_dbitlen; } ;
struct TYPE_10__ {int* data_buf; TYPE_3__ cmd; TYPE_2__ miso_dlen; TYPE_1__ mosi_dlen; } ;


 int memcpy (int const*,int const*,int) ;
 int memset (int const*,int,int) ;

__attribute__((used)) static void __spiTransferBytes(spi_t * spi, const uint8_t * data, uint8_t * out, uint32_t bytes)
{
    if(!spi) {
        return;
    }
    int i;

    if(bytes > 64) {
        bytes = 64;
    }

    uint32_t words = (bytes + 3) / 4;

    uint32_t wordsBuf[16] = {0,};
    uint8_t * bytesBuf = (uint8_t *) wordsBuf;

    if(data) {
        memcpy(bytesBuf, data, bytes);
    } else {
        memset(bytesBuf, 0xFF, bytes);
    }

    spi->dev->mosi_dlen.usr_mosi_dbitlen = ((bytes * 8) - 1);
    spi->dev->miso_dlen.usr_miso_dbitlen = ((bytes * 8) - 1);

    for(i=0; i<words; i++) {
        spi->dev->data_buf[i] = wordsBuf[i];
    }

    spi->dev->cmd.usr = 1;

    while(spi->dev->cmd.usr);

    if(out) {
        for(i=0; i<words; i++) {
            wordsBuf[i] = spi->dev->data_buf[i];
        }
        memcpy(out, bytesBuf, bytes);
    }
}
