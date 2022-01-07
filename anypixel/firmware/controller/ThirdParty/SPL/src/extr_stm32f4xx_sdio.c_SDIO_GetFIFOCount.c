
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int FIFOCNT; } ;


 TYPE_1__* SDIO ;

uint32_t SDIO_GetFIFOCount(void)
{
  return SDIO->FIFOCNT;
}
