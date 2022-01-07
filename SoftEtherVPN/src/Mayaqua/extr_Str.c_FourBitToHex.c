
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;



char FourBitToHex(UINT value)
{
 value = value % 16;

 if (value <= 9)
 {
  return '0' + value;
 }
 else
 {
  return 'a' + (value - 10);
 }
}
