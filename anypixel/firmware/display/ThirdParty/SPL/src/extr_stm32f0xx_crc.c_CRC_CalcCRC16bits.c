
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int DR; } ;


 TYPE_1__* CRC ;
 scalar_t__ CRC_BASE ;

uint32_t CRC_CalcCRC16bits(uint16_t CRC_Data)
{
  *(uint16_t*)(CRC_BASE) = (uint16_t) CRC_Data;

  return (CRC->DR);
}
