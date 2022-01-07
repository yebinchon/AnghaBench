
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ICR; } ;


 TYPE_1__* CRS ;
 int CRS_ICR_ERRC ;
 int FLAG_MASK ;
 int IS_CRS_CLEAR_IT (int) ;
 int assert_param (int ) ;

void CRS_ClearITPendingBit(uint32_t CRS_IT)
{

  assert_param(IS_CRS_CLEAR_IT(CRS_IT));

  if ((CRS_IT & FLAG_MASK)!= 0)
  {
    CRS->ICR |= CRS_ICR_ERRC;
  }
  else
  {
    CRS->ICR |= CRS_IT;
  }
}
