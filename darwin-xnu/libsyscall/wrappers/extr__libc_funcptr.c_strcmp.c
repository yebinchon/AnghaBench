
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* strcmp ) (char const*,char const*) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 int stub1 (char const*,char const*) ;

__attribute__((visibility("hidden")))
int
strcmp(const char *s1, const char *s2)
{
 return _libkernel_string_functions->strcmp(s1, s2);
}
