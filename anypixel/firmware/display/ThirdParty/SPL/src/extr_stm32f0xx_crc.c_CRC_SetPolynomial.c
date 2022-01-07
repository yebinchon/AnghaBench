
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int POL; } ;


 TYPE_1__* CRC ;

void CRC_SetPolynomial(uint32_t CRC_Pol)
{
  CRC->POL = CRC_Pol;
}
