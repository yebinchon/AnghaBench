
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_6__ {int * pxPrevious; int * pxNext; int xItemValue; } ;
struct TYPE_7__ {scalar_t__ uxNumberOfItems; TYPE_1__ xListEnd; int * pxIndex; } ;
typedef TYPE_2__ List_t ;
typedef int ListItem_t ;


 int listSET_LIST_INTEGRITY_CHECK_1_VALUE (TYPE_2__* const) ;
 int listSET_LIST_INTEGRITY_CHECK_2_VALUE (TYPE_2__* const) ;
 int portMAX_DELAY ;

void vListInitialise( List_t * const pxList )
{



 pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd );



 pxList->xListEnd.xItemValue = portMAX_DELAY;



 pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );
 pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd );

 pxList->uxNumberOfItems = ( UBaseType_t ) 0U;



 listSET_LIST_INTEGRITY_CHECK_1_VALUE( pxList );
 listSET_LIST_INTEGRITY_CHECK_2_VALUE( pxList );
}
