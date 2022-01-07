
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int sortOrder; } ;
typedef TYPE_1__ tVariantListItem ;
struct TYPE_11__ {int nExpr; TYPE_1__* a; } ;
typedef TYPE_2__ tVariantList ;
typedef int tVariant ;
typedef int int32_t ;


 int memcpy (TYPE_1__*,int *,int) ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_2__* tVariantListAppend (int *,int *,int ) ;
 int * tVariantListExpand (TYPE_2__*) ;

tVariantList *tVariantListInsert(tVariantList *pList, tVariant *pVar, uint8_t sortOrder, int32_t index) {
  if (pList == ((void*)0) || index >= pList->nExpr) {
    return tVariantListAppend(((void*)0), pVar, sortOrder);
  }

  if (tVariantListExpand(pList) == ((void*)0)) {
    return pList;
  }

  if (pVar) {
    memmove(&pList->a[index + 1], &pList->a[index], sizeof(tVariantListItem) * (pList->nExpr - index));

    tVariantListItem *pItem = &pList->a[index];






    memcpy(pItem, pVar, sizeof(tVariant));
    pItem->sortOrder = sortOrder;

    pList->nExpr++;
  }

  return pList;
}
