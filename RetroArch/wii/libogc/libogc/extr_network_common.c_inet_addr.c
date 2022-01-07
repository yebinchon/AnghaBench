
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
struct in_addr {int s_addr; } ;


 int INADDR_NONE ;
 scalar_t__ inet_aton (char const*,struct in_addr*) ;

u32_t inet_addr(const char *cp)
 {
     struct in_addr val;

     if (inet_aton(cp, &val)) {
         return (val.s_addr);
     }
     return (INADDR_NONE);
 }
