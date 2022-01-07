
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * CSR; int CR; int STR; int IMR; } ;
struct TYPE_4__ {int * HASH_CSR; int HASH_CR; int HASH_STR; int HASH_IMR; } ;
typedef TYPE_1__ HASH_Context ;


 TYPE_3__* HASH ;

void HASH_SaveContext(HASH_Context* HASH_ContextSave)
{
  uint8_t i = 0;


  HASH_ContextSave->HASH_IMR = HASH->IMR;
  HASH_ContextSave->HASH_STR = HASH->STR;
  HASH_ContextSave->HASH_CR = HASH->CR;
  for(i=0; i<=50;i++)
  {
     HASH_ContextSave->HASH_CSR[i] = HASH->CSR[i];
  }
}
