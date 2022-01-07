
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* draw ) () ;scalar_t__ showlogo; scalar_t__ fullscreen; } ;
struct TYPE_3__ {int frametime; int realtime; scalar_t__ cursory; scalar_t__ cursorx; scalar_t__ debug; int cursor; void* firstdraw; TYPE_2__* activemenu; int menuBackNoLogoShader; int menuBackShader; } ;


 int CHAN_LOCAL_SOUND ;
 int KEYCATCH_UI ;
 int Menu_Draw (TYPE_2__*) ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 int UI_DrawHandlePic (scalar_t__,scalar_t__,int,int,int ) ;
 int UI_DrawString (int ,int ,int ,int,int ) ;
 int UI_LEFT ;
 int UI_MouseEvent (int ,int ) ;
 int UI_SMALLFONT ;
 int UI_SetColor (int *) ;
 int UI_UpdateCvars () ;
 int colorRed ;
 void* m_entersound ;
 int menu_in_sound ;
 void* qfalse ;
 int stub1 () ;
 int trap_Key_GetCatcher () ;
 int trap_S_StartLocalSound (int ,int ) ;
 TYPE_1__ uis ;
 int va (char*,scalar_t__,scalar_t__) ;

void UI_Refresh( int realtime )
{
 uis.frametime = realtime - uis.realtime;
 uis.realtime = realtime;

 if ( !( trap_Key_GetCatcher() & KEYCATCH_UI ) ) {
  return;
 }

 UI_UpdateCvars();

 if ( uis.activemenu )
 {
  if (uis.activemenu->fullscreen)
  {

   if( uis.activemenu->showlogo ) {
    UI_DrawHandlePic( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, uis.menuBackShader );
   }
   else {
    UI_DrawHandlePic( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, uis.menuBackNoLogoShader );
   }
  }

  if (uis.activemenu->draw)
   uis.activemenu->draw();
  else
   Menu_Draw( uis.activemenu );

  if( uis.firstdraw ) {
   UI_MouseEvent( 0, 0 );
   uis.firstdraw = qfalse;
  }
 }


 UI_SetColor( ((void*)0) );
 UI_DrawHandlePic( uis.cursorx-16, uis.cursory-16, 32, 32, uis.cursor);


 if (uis.debug)
 {

  UI_DrawString( 0, 0, va("(%d,%d)",uis.cursorx,uis.cursory), UI_LEFT|UI_SMALLFONT, colorRed );
 }





 if (m_entersound)
 {
  trap_S_StartLocalSound( menu_in_sound, CHAN_LOCAL_SOUND );
  m_entersound = qfalse;
 }
}
