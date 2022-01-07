
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n; scalar_t__ alloc; int z; } ;
typedef TYPE_1__ SString ;


 int calloc (int,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void SStringCopy(SString* pDest, const SString* pSrc) {
  if (pSrc->n > 0) {
    pDest->n = pSrc->n;
    pDest->alloc = pDest->n + 1;

    pDest->z = calloc(1, pDest->alloc);

    memcpy(pDest->z, pSrc->z, pDest->n);
  } else {
    memset(pDest, 0, sizeof(SString));
  }
}
