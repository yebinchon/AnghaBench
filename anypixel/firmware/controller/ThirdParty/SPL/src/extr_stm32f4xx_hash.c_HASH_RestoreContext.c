
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
 int HASH_CR_INIT ;

void HASH_RestoreContext(HASH_Context* HASH_ContextRestore)
{
  uint8_t i = 0;


  HASH->IMR = HASH_ContextRestore->HASH_IMR;
  HASH->STR = HASH_ContextRestore->HASH_STR;
  HASH->CR = HASH_ContextRestore->HASH_CR;


  HASH->CR |= HASH_CR_INIT;


  for(i=0; i<=50;i++)
  {
     HASH->CSR[i] = HASH_ContextRestore->HASH_CSR[i];
  }
}
