
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 void* _memalign_r (struct _reent*,int,size_t) ;

void* _malloc_r(struct _reent *r, size_t size)
{
   return _memalign_r(r, 4, size);
}
