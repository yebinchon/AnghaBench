
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int sortOrder; } ;
typedef TYPE_1__ tVariantListItem ;
struct TYPE_12__ {int nExpr; TYPE_1__* a; } ;
typedef TYPE_2__ tVariantList ;
struct TYPE_13__ {int member_0; } ;
typedef TYPE_3__ tVariant ;
typedef int SSQLToken ;


 TYPE_2__* calloc (int,int) ;
 int memcpy (TYPE_1__*,TYPE_3__*,int) ;
 int tVariantCreate (TYPE_3__*,int *) ;
 int * tVariantListExpand (TYPE_2__*) ;

tVariantList *tVariantListAppendToken(tVariantList *pList, SSQLToken *pAliasToken, uint8_t sortOrder) {
  if (pList == ((void*)0)) {
    pList = calloc(1, sizeof(tVariantList));
  }

  if (tVariantListExpand(pList) == ((void*)0)) {
    return pList;
  }

  if (pAliasToken) {
    tVariant t = {0};
    tVariantCreate(&t, pAliasToken);

    tVariantListItem *pItem = &pList->a[pList->nExpr++];
    memcpy(pItem, &t, sizeof(tVariant));
    pItem->sortOrder = sortOrder;
  }
  return pList;
}
