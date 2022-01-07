
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pickup_name; scalar_t__ icon; } ;
typedef TYPE_1__ gitem_t ;


 int CG_LoadingString (int ) ;
 scalar_t__ MAX_LOADING_ITEM_ICONS ;
 TYPE_1__* bg_itemlist ;
 scalar_t__ loadingItemIconCount ;
 int * loadingItemIcons ;
 int trap_R_RegisterShaderNoMip (scalar_t__) ;

void CG_LoadingItem( int itemNum ) {
 gitem_t *item;

 item = &bg_itemlist[itemNum];

 if ( item->icon && loadingItemIconCount < MAX_LOADING_ITEM_ICONS ) {
  loadingItemIcons[loadingItemIconCount++] = trap_R_RegisterShaderNoMip( item->icon );
 }

 CG_LoadingString( item->pickup_name );
}
