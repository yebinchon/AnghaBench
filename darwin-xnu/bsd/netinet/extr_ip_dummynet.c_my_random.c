
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;


 int read_frandom (int*,int) ;

uint32_t my_random(void)
{
 uint32_t val;
 read_frandom(&val, sizeof(val));
 val &= 0x7FFFFFFF;

 return (val);
}
