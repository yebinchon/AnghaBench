
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int FIFO; } ;


 TYPE_1__* SDIO ;

void SDIO_WriteData(uint32_t Data)
{
  SDIO->FIFO = Data;
}
