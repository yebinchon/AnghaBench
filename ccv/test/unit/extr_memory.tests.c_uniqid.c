
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int rand () ;

uint64_t uniqid()
{
 union {
  uint64_t u;
  uint8_t chr[8];
 } sign;
 int i;
 for (i = 0; i < 8; i++)
  sign.chr[i] = rand() & 0xff;
 return sign.u;
}
