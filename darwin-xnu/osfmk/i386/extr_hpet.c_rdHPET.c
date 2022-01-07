
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ volatile uint32_t ;
struct TYPE_2__ {int MAIN_CNT; } ;
typedef TYPE_1__ hpetReg_t ;


 scalar_t__ hpetArea ;

uint64_t
rdHPET(void)
{
 hpetReg_t *hpetp = (hpetReg_t *) hpetArea;
 volatile uint32_t *regp = (uint32_t *) &hpetp->MAIN_CNT;
 uint32_t high;
 uint32_t low;

 do {
  high = *(regp + 1);
  low = *regp;
 } while (high != *(regp + 1));

 return (((uint64_t) high) << 32) | low;
}
