
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
 int IS_CRS_FLAG (int) ;
 int assert_param (int ) ;

void CRS_ClearFlag(uint32_t CRS_FLAG)
{

  assert_param(IS_CRS_FLAG(CRS_FLAG));

  if ((CRS_FLAG & FLAG_MASK)!= 0)
  {
    CRS->ICR |= CRS_ICR_ERRC;
  }
  else
  {
    CRS->ICR |= CRS_FLAG;
  }
}
