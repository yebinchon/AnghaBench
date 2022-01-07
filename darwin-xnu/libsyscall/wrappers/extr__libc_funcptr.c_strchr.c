
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* strchr ) (char const*,int) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 char* stub1 (char const*,int) ;

__attribute__((visibility("hidden")))
char *
strchr(const char *s, int c)
{
 return _libkernel_string_functions->strchr(s, c);
}
