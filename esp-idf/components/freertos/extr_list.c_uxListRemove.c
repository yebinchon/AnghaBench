
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UBaseType_t ;
struct TYPE_7__ {int * pvContainer; struct TYPE_7__* pxPrevious; TYPE_1__* pxNext; } ;
struct TYPE_6__ {int uxNumberOfItems; TYPE_3__* pxIndex; } ;
struct TYPE_5__ {TYPE_3__* pxPrevious; } ;
typedef TYPE_2__ List_t ;
typedef TYPE_3__ ListItem_t ;


 int mtCOVERAGE_TEST_MARKER () ;

UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove )
{


List_t * const pxList = ( List_t * ) pxItemToRemove->pvContainer;

 pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
 pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;


 if( pxList->pxIndex == pxItemToRemove )
 {
  pxList->pxIndex = pxItemToRemove->pxPrevious;
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }

 pxItemToRemove->pvContainer = ((void*)0);
 ( pxList->uxNumberOfItems )--;

 return pxList->uxNumberOfItems;
}
