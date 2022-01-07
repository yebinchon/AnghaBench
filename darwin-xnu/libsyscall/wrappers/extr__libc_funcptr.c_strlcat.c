
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* strlcat ) (char*,char const*,size_t) ;} ;


 TYPE_1__* _libkernel_string_functions ;
 size_t stub1 (char*,char const*,size_t) ;

__attribute__((visibility("hidden")))
size_t
strlcat(char * restrict dst, const char * restrict src, size_t maxlen)
{
 return _libkernel_string_functions->strlcat(dst, src, maxlen);
}
