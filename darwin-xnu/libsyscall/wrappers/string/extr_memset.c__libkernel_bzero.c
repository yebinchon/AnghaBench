
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _libkernel_memset (void*,int ,size_t) ;

__attribute__((visibility("hidden")))
void
_libkernel_bzero(void *dst0, size_t length)
{
    return (void)_libkernel_memset(dst0, 0, length);
}
