
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union q_util {int dummy; } q_util ;
typedef union l_util {int dummy; } l_util ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;


 int REDUCE16 ;

uint16_t
in_pseudo64(uint64_t a, uint64_t b, uint64_t c)
{
 uint64_t sum;
 union q_util q_util;
 union l_util l_util;

 sum = a + b + c;
 REDUCE16;
 return (sum);
}
