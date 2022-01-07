
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ISR; } ;
typedef int FlagStatus ;


 TYPE_1__* CRS ;
 int IS_CRS_FLAG (int) ;
 int assert_param (int ) ;

FlagStatus CRS_GetFlagStatus(uint32_t CRS_FLAG)
{

  assert_param(IS_CRS_FLAG(CRS_FLAG));

  return ((FlagStatus)(CRS->ISR & CRS_FLAG));
}
