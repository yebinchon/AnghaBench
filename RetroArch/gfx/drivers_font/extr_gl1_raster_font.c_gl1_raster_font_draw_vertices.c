
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_12__ {int vertices; float* vertex; int tex_coord; int color; } ;
typedef TYPE_4__ video_coords_t ;
struct TYPE_13__ {TYPE_3__* gl; TYPE_1__* atlas; } ;
typedef TYPE_5__ gl1_raster_t ;
struct TYPE_10__ {int data; } ;
struct TYPE_11__ {TYPE_2__ mvp; } ;
struct TYPE_9__ {int dirty; } ;


 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TRIANGLES ;
 int GL_VERTEX_ARRAY ;
 int free (float*) ;
 int gl1_raster_font_upload_atlas (TYPE_5__*) ;
 int glColorPointer (int,int ,int ,int ) ;
 int glDisableClientState (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableClientState (int ) ;
 int glLoadIdentity () ;
 int glLoadMatrixf (int ) ;
 int glMatrixMode (int ) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glTexCoordPointer (int,int ,int ,int ) ;
 int glVertexPointer (int,int ,int ,float*) ;
 scalar_t__ malloc (int) ;
 int memcpy (float*,float*,int) ;
 float* vertices3 ;

__attribute__((used)) static void gl1_raster_font_draw_vertices(gl1_raster_t *font,
      const video_coords_t *coords,
      video_frame_info_t *video_info)
{
   if (font->atlas->dirty)
   {
      gl1_raster_font_upload_atlas(font);
      font->atlas->dirty = 0;
   }

   glMatrixMode(GL_PROJECTION);
   glPushMatrix();
   glLoadMatrixf(font->gl->mvp.data);

   glMatrixMode(GL_MODELVIEW);
   glPushMatrix();
   glLoadIdentity();

   glEnableClientState(GL_COLOR_ARRAY);
   glEnableClientState(GL_VERTEX_ARRAY);
   glEnableClientState(GL_TEXTURE_COORD_ARRAY);
   glVertexPointer(2, GL_FLOAT, 0, coords->vertex);


   glColorPointer(4, GL_FLOAT, 0, coords->color);
   glTexCoordPointer(2, GL_FLOAT, 0, coords->tex_coord);

   glDrawArrays(GL_TRIANGLES, 0, coords->vertices);

   glDisableClientState(GL_COLOR_ARRAY);
   glDisableClientState(GL_TEXTURE_COORD_ARRAY);
   glDisableClientState(GL_VERTEX_ARRAY);

   glMatrixMode(GL_MODELVIEW);
   glPopMatrix();
   glMatrixMode(GL_PROJECTION);
   glPopMatrix();
}
