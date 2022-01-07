
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;
typedef int ptrdiff_t ;


 int abort () ;

void* _sbrk_r(struct _reent *r, ptrdiff_t sz)
{
    abort();
}
