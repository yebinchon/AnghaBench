
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* strncmp ) (char const*,char const*,size_t) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 int stub1 (char const*,char const*,size_t) ;

__attribute__((visibility("hidden")))
int
strncmp(const char *s1, const char *s2, size_t n)
{
 return _libkernel_string_functions->strncmp(s1, s2, n);
}
