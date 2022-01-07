
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int INIT; } ;


 TYPE_1__* CRC ;

void CRC_SetInitRegister(uint32_t CRC_InitValue)
{
  CRC->INIT = CRC_InitValue;
}
