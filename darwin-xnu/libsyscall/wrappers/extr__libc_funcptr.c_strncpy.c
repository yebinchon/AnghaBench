
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* strncpy ) (char*,char const*,size_t) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 char* stub1 (char*,char const*,size_t) ;

__attribute__((visibility("hidden")))
char *
strncpy(char * restrict dst, const char * restrict src, size_t maxlen)
{
 return _libkernel_string_functions->strncpy(dst, src, maxlen);
}
