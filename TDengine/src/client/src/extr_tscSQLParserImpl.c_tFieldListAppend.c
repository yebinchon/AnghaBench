
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nAlloc; int nField; int * p; } ;
typedef TYPE_1__ tFieldList ;
struct TAOS_FIELD {int dummy; } ;
typedef int TAOS_FIELD ;


 int assert (int) ;
 TYPE_1__* calloc (int,int) ;
 int memcpy (struct TAOS_FIELD*,int *,int) ;
 int * realloc (int *,int) ;

tFieldList *tFieldListAppend(tFieldList *pList, TAOS_FIELD *pField) {
  if (pList == ((void*)0)) pList = calloc(1, sizeof(tFieldList));

  if (pList->nAlloc <= pList->nField) {
    pList->nAlloc = (pList->nAlloc << 1) + 4;
    pList->p = realloc(pList->p, pList->nAlloc * sizeof(pList->p[0]));
    if (pList->p == 0) {
      pList->nField = pList->nAlloc = 0;
      return pList;
    }
  }
  assert(pList->p != 0);

  if (pField) {
    struct TAOS_FIELD *pItem = (struct TAOS_FIELD *)&pList->p[pList->nField++];
    memcpy(pItem, pField, sizeof(TAOS_FIELD));
  }
  return pList;
}
