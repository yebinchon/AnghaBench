
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int DCOUNT; } ;


 TYPE_1__* SDIO ;

uint32_t SDIO_GetDataCounter(void)
{
  return SDIO->DCOUNT;
}
