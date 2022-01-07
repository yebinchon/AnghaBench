
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CSR; } ;


 TYPE_1__* COMP ;
 int COMP_CSR_COMP1LOCK ;
 int IS_COMP_ALL_PERIPH (int) ;
 int assert_param (int ) ;

void COMP_LockConfig(uint32_t COMP_Selection)
{

  assert_param(IS_COMP_ALL_PERIPH(COMP_Selection));


  COMP->CSR |= (uint32_t) (COMP_CSR_COMP1LOCK<<COMP_Selection);
}
