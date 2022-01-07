
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* snap; } ;
struct TYPE_7__ {int icon; } ;
struct TYPE_5__ {int* stats; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;


 int CG_DrawPic (int,int,int,int,int ) ;
 int CG_RegisterItemVisuals (int) ;
 int ICON_SIZE ;
 int SCREEN_HEIGHT ;
 size_t STAT_HOLDABLE_ITEM ;
 TYPE_4__ cg ;
 TYPE_3__* cg_items ;

__attribute__((used)) static void CG_DrawHoldableItem( void ) {
 int value;

 value = cg.snap->ps.stats[STAT_HOLDABLE_ITEM];
 if ( value ) {
  CG_RegisterItemVisuals( value );
  CG_DrawPic( 640-ICON_SIZE, (SCREEN_HEIGHT-ICON_SIZE)/2, ICON_SIZE, ICON_SIZE, cg_items[ value ].icon );
 }

}
