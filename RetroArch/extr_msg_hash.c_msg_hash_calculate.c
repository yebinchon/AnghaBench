
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int djb2_calculate (char const*) ;

uint32_t msg_hash_calculate(const char *s)
{
   return djb2_calculate(s);
}
