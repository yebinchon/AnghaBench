
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ISR; } ;


 TYPE_1__* CEC ;
 int IS_CEC_CLEAR_FLAG (int ) ;
 int assert_param (int ) ;

void CEC_ClearFlag(uint32_t CEC_FLAG)
{
  assert_param(IS_CEC_CLEAR_FLAG(CEC_FLAG));


  CEC->ISR = CEC_FLAG;
}
