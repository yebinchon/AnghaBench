
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;


 int ADDCARRY (scalar_t__) ;

uint16_t
in_addword(uint16_t a, uint16_t b)
{
 uint64_t sum = a + b;

 ADDCARRY(sum);
 return (sum);
}
