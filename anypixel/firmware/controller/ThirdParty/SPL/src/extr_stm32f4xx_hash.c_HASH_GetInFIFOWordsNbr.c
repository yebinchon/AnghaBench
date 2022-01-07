
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int CR; } ;


 TYPE_1__* HASH ;
 int HASH_CR_NBW ;

uint8_t HASH_GetInFIFOWordsNbr(void)
{

  return ((HASH->CR & HASH_CR_NBW) >> 8);
}
