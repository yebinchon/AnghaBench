
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int n; int * z; } ;
typedef TYPE_1__ SString ;


 int assert (int ) ;
 int * realloc (int *,int) ;

void SStringShrink(SString* pStr) {
  if (pStr->alloc > (pStr->n + 1) && pStr->alloc > (pStr->n * 2)) {
    pStr->z = realloc(pStr->z, pStr->n + 1);
    assert(pStr->z != ((void*)0));

    pStr->alloc = pStr->n + 1;
  }
}
