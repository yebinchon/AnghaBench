
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* strstr ) (char const*,char const*) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 char* stub1 (char const*,char const*) ;

__attribute__((visibility("hidden")))
char *
strstr(const char *s, const char *find)
{
 return _libkernel_string_functions->strstr(s, find);
}
