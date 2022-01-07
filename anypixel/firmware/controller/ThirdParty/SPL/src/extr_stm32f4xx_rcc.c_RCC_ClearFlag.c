
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CSR; } ;


 TYPE_1__* RCC ;
 int RCC_CSR_RMVF ;

void RCC_ClearFlag(void)
{

  RCC->CSR |= RCC_CSR_RMVF;
}
