
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CSR; } ;


 TYPE_1__* COMP ;
 int COMP_CSR_COMP1OUT ;
 int COMP_OutputLevel_High ;
 int COMP_OutputLevel_Low ;
 int IS_COMP_ALL_PERIPH (int) ;
 int assert_param (int ) ;

uint32_t COMP_GetOutputLevel(uint32_t COMP_Selection)
{
  uint32_t compout = 0x0;


  assert_param(IS_COMP_ALL_PERIPH(COMP_Selection));


  if ((COMP->CSR & (COMP_CSR_COMP1OUT<<COMP_Selection)) != 0)
  {
    compout = COMP_OutputLevel_High;
  }
  else
  {
    compout = COMP_OutputLevel_Low;
  }


  return (uint32_t)(compout);
}
