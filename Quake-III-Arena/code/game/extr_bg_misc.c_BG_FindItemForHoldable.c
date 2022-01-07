
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ holdable_t ;
struct TYPE_4__ {scalar_t__ giType; scalar_t__ giTag; } ;
typedef TYPE_1__ gitem_t ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 scalar_t__ IT_HOLDABLE ;
 TYPE_1__* bg_itemlist ;
 int bg_numItems ;

gitem_t *BG_FindItemForHoldable( holdable_t pw ) {
 int i;

 for ( i = 0 ; i < bg_numItems ; i++ ) {
  if ( bg_itemlist[i].giType == IT_HOLDABLE && bg_itemlist[i].giTag == pw ) {
   return &bg_itemlist[i];
  }
 }

 Com_Error( ERR_DROP, "HoldableItem not found" );

 return ((void*)0);
}
