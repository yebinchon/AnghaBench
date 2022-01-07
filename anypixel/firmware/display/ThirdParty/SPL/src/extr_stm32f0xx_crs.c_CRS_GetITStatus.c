
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ISR; } ;
typedef int ITStatus ;


 TYPE_1__* CRS ;
 int IS_CRS_GET_IT (int) ;
 int assert_param (int ) ;

ITStatus CRS_GetITStatus(uint32_t CRS_IT)
{

  assert_param(IS_CRS_GET_IT(CRS_IT));

  return ((ITStatus)(CRS->ISR & CRS_IT));
}
