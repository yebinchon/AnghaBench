
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int RandomULong () ;

u_int32_t
random(void)
{

 u_int32_t mask = (u_int32_t)-1 >> ((sizeof(u_int32_t) * 8) - 31);
 return (mask & RandomULong());
}
