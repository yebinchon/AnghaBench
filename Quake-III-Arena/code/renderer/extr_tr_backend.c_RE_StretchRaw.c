
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int byte ;
struct TYPE_8__ {int width; int height; int uploadWidth; int uploadHeight; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {int (* Milliseconds ) () ;int (* Printf ) (int ,char*,int,int,int) ;int (* Error ) (int ,char*,int,int) ;} ;
struct TYPE_5__ {int identityLight; TYPE_4__** scratchImage; int registered; } ;


 int ERR_DROP ;
 int GL_Bind (TYPE_4__*) ;
 int GL_CLAMP ;
 int GL_LINEAR ;
 int GL_QUADS ;
 int GL_RGB8 ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNSIGNED_BYTE ;
 int PRINT_ALL ;
 int RB_SetGL2D () ;
 int R_SyncRenderThread () ;
 int qglBegin (int ) ;
 int qglColor3f (int ,int ,int ) ;
 int qglEnd () ;
 int qglFinish () ;
 int qglTexCoord2f (float,int) ;
 int qglTexImage2D (int ,int ,int ,int,int,int ,int ,int ,int const*) ;
 int qglTexParameterf (int ,int ,int ) ;
 int qglTexSubImage2D (int ,int ,int ,int ,int,int,int ,int ,int const*) ;
 int qglVertex2f (int,int) ;
 TYPE_3__* r_speeds ;
 TYPE_2__ ri ;
 int stub1 () ;
 int stub2 (int ,char*,int,int) ;
 int stub3 () ;
 int stub4 (int ,char*,int,int,int) ;
 TYPE_1__ tr ;

void RE_StretchRaw (int x, int y, int w, int h, int cols, int rows, const byte *data, int client, qboolean dirty) {
 int i, j;
 int start, end;

 if ( !tr.registered ) {
  return;
 }
 R_SyncRenderThread();


 qglFinish();

 start = end = 0;
 if ( r_speeds->integer ) {
  start = ri.Milliseconds();
 }


 for ( i = 0 ; ( 1 << i ) < cols ; i++ ) {
 }
 for ( j = 0 ; ( 1 << j ) < rows ; j++ ) {
 }
 if ( ( 1 << i ) != cols || ( 1 << j ) != rows) {
  ri.Error (ERR_DROP, "Draw_StretchRaw: size not a power of 2: %i by %i", cols, rows);
 }

 GL_Bind( tr.scratchImage[client] );


 if ( cols != tr.scratchImage[client]->width || rows != tr.scratchImage[client]->height ) {
  tr.scratchImage[client]->width = tr.scratchImage[client]->uploadWidth = cols;
  tr.scratchImage[client]->height = tr.scratchImage[client]->uploadHeight = rows;
  qglTexImage2D( GL_TEXTURE_2D, 0, GL_RGB8, cols, rows, 0, GL_RGBA, GL_UNSIGNED_BYTE, data );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP );
  qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP );
 } else {
  if (dirty) {


   qglTexSubImage2D( GL_TEXTURE_2D, 0, 0, 0, cols, rows, GL_RGBA, GL_UNSIGNED_BYTE, data );
  }
 }

 if ( r_speeds->integer ) {
  end = ri.Milliseconds();
  ri.Printf( PRINT_ALL, "qglTexSubImage2D %i, %i: %i msec\n", cols, rows, end - start );
 }

 RB_SetGL2D();

 qglColor3f( tr.identityLight, tr.identityLight, tr.identityLight );

 qglBegin (GL_QUADS);
 qglTexCoord2f ( 0.5f / cols, 0.5f / rows );
 qglVertex2f (x, y);
 qglTexCoord2f ( ( cols - 0.5f ) / cols , 0.5f / rows );
 qglVertex2f (x+w, y);
 qglTexCoord2f ( ( cols - 0.5f ) / cols, ( rows - 0.5f ) / rows );
 qglVertex2f (x+w, y+h);
 qglTexCoord2f ( 0.5f / cols, ( rows - 0.5f ) / rows );
 qglVertex2f (x, y+h);
 qglEnd ();
}
