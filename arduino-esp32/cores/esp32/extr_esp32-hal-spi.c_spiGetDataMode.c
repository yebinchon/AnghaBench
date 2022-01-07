
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_3__* dev; } ;
typedef TYPE_4__ spi_t ;
struct TYPE_7__ {int ck_out_edge; } ;
struct TYPE_6__ {int ck_idle_edge; } ;
struct TYPE_8__ {TYPE_2__ user; TYPE_1__ pin; } ;


 int SPI_MODE0 ;
 int SPI_MODE1 ;
 int SPI_MODE2 ;
 int SPI_MODE3 ;

uint8_t spiGetDataMode(spi_t * spi)
{
    if(!spi) {
        return 0;
    }
    bool idleEdge = spi->dev->pin.ck_idle_edge;
    bool outEdge = spi->dev->user.ck_out_edge;
    if(idleEdge) {
        if(outEdge) {
            return SPI_MODE2;
        }
        return SPI_MODE3;
    }
    if(outEdge) {
        return SPI_MODE1;
    }
    return SPI_MODE0;
}
