
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int sortOrder; } ;
typedef TYPE_1__ tVariantListItem ;
struct TYPE_9__ {int nExpr; TYPE_1__* a; } ;
typedef TYPE_2__ tVariantList ;
typedef int tVariant ;


 TYPE_2__* calloc (int,int) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int * tVariantListExpand (TYPE_2__*) ;

tVariantList *tVariantListAppend(tVariantList *pList, tVariant *pVar, uint8_t sortOrder) {
  if (pList == ((void*)0)) {
    pList = calloc(1, sizeof(tVariantList));
  }

  if (tVariantListExpand(pList) == ((void*)0)) {
    return pList;
  }

  if (pVar) {
    tVariantListItem *pItem = &pList->a[pList->nExpr++];






    memcpy(pItem, pVar, sizeof(tVariant));
    pItem->sortOrder = sortOrder;
  }
  return pList;
}
