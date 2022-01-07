
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int IDR; } ;


 TYPE_1__* CRC ;

void CRC_SetIDRegister(uint8_t CRC_IDValue)
{
  CRC->IDR = CRC_IDValue;
}
