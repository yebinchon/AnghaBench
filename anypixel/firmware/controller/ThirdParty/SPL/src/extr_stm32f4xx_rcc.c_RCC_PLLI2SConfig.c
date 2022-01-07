
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int PLLI2SCFGR; } ;


 int IS_RCC_PLLI2SN_VALUE (int) ;
 int IS_RCC_PLLI2SR_VALUE (int) ;
 TYPE_1__* RCC ;
 int assert_param (int ) ;

void RCC_PLLI2SConfig(uint32_t PLLI2SN, uint32_t PLLI2SR)
{

  assert_param(IS_RCC_PLLI2SN_VALUE(PLLI2SN));
  assert_param(IS_RCC_PLLI2SR_VALUE(PLLI2SR));

  RCC->PLLI2SCFGR = (PLLI2SN << 6) | (PLLI2SR << 28);
}
