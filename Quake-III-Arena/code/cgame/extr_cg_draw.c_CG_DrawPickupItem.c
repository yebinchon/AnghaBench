
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int pickup_name; } ;
struct TYPE_9__ {int itemPickup; int itemPickupTime; TYPE_2__* snap; } ;
struct TYPE_8__ {int icon; } ;
struct TYPE_6__ {scalar_t__* stats; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;


 int BIGCHAR_HEIGHT ;
 int CG_DrawBigString (int,int,int ,float) ;
 int CG_DrawPic (int,int,int,int,int ) ;
 float* CG_FadeColor (int ,int) ;
 int CG_RegisterItemVisuals (int) ;
 int ICON_SIZE ;
 size_t STAT_HEALTH ;
 TYPE_5__* bg_itemlist ;
 TYPE_4__ cg ;
 TYPE_3__* cg_items ;
 int trap_R_SetColor (float*) ;

__attribute__((used)) static int CG_DrawPickupItem( int y ) {
 int value;
 float *fadeColor;

 if ( cg.snap->ps.stats[STAT_HEALTH] <= 0 ) {
  return y;
 }

 y -= ICON_SIZE;

 value = cg.itemPickup;
 if ( value ) {
  fadeColor = CG_FadeColor( cg.itemPickupTime, 3000 );
  if ( fadeColor ) {
   CG_RegisterItemVisuals( value );
   trap_R_SetColor( fadeColor );
   CG_DrawPic( 8, y, ICON_SIZE, ICON_SIZE, cg_items[ value ].icon );
   CG_DrawBigString( ICON_SIZE + 16, y + (ICON_SIZE/2 - BIGCHAR_HEIGHT/2), bg_itemlist[ value ].pickup_name, fadeColor[0] );
   trap_R_SetColor( ((void*)0) );
  }
 }

 return y;
}
