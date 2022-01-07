
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int id; int flags; scalar_t__ name; } ;
struct TYPE_5__ {int width; int height; void* focusshader; TYPE_1__ generic; void* shader; scalar_t__ focuspic; scalar_t__ errorpic; } ;
typedef TYPE_2__ menubitmap_s ;
struct TYPE_6__ {int page; int * maplist; } ;


 int ID_PICTURES ;
 int MAX_MAPSPERPAGE ;
 int QMF_HIGHLIGHT ;
 int UI_CENTER ;
 int UI_DrawHandlePic (int,int,int,int,void*) ;
 int UI_DrawString (int,int,int ,int,int ) ;
 int UI_FillRect (int,int,int,int,int ) ;
 int UI_SMALLFONT ;
 int colorBlack ;
 int color_orange ;
 TYPE_3__ s_startserver ;
 void* trap_R_RegisterShaderNoMip (scalar_t__) ;

__attribute__((used)) static void StartServer_LevelshotDraw( void *self ) {
 menubitmap_s *b;
 int x;
 int y;
 int w;
 int h;
 int n;

 b = (menubitmap_s *)self;

 if( !b->generic.name ) {
  return;
 }

 if( b->generic.name && !b->shader ) {
  b->shader = trap_R_RegisterShaderNoMip( b->generic.name );
  if( !b->shader && b->errorpic ) {
   b->shader = trap_R_RegisterShaderNoMip( b->errorpic );
  }
 }

 if( b->focuspic && !b->focusshader ) {
  b->focusshader = trap_R_RegisterShaderNoMip( b->focuspic );
 }

 x = b->generic.x;
 y = b->generic.y;
 w = b->width;
 h = b->height;
 if( b->shader ) {
  UI_DrawHandlePic( x, y, w, h, b->shader );
 }

 x = b->generic.x;
 y = b->generic.y + b->height;
 UI_FillRect( x, y, b->width, 28, colorBlack );

 x += b->width / 2;
 y += 4;
 n = s_startserver.page * MAX_MAPSPERPAGE + b->generic.id - ID_PICTURES;
 UI_DrawString( x, y, s_startserver.maplist[n], UI_CENTER|UI_SMALLFONT, color_orange );

 x = b->generic.x;
 y = b->generic.y;
 w = b->width;
 h = b->height + 28;
 if( b->generic.flags & QMF_HIGHLIGHT ) {
  UI_DrawHandlePic( x, y, w, h, b->focusshader );
 }
}
