
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* strnlen ) (char const*,size_t) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 size_t stub1 (char const*,size_t) ;

__attribute__((visibility("hidden")))
size_t
strnlen(const char *s, size_t maxlen)
{
 return _libkernel_string_functions->strnlen(s, maxlen);
}
