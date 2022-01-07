
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int * matrix; TYPE_6__* data; } ;
typedef TYPE_3__ video_shader_ctx_mvp_t ;
struct TYPE_15__ {scalar_t__ userdata; } ;
typedef TYPE_4__ video_frame_info_t ;
struct TYPE_16__ {TYPE_1__* coords; int prim_type; scalar_t__ matrix_data; scalar_t__ texture; } ;
typedef TYPE_5__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;
struct TYPE_13__ {int color; } ;
struct TYPE_17__ {int white_color_ptr; TYPE_2__ coords; } ;
typedef TYPE_6__ gl1_t ;
struct TYPE_12__ {float* vertex; int vertices; void* tex_coord; int color; void* lut_tex_coord; } ;
typedef int GLuint ;
typedef int GLfloat ;


 int GL_COLOR_ARRAY ;
 int GL_FLOAT ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_VERTEX_ARRAY ;
 int free (float*) ;
 int glBindTexture (int ,int ) ;
 int glColorPointer (int,int ,int ,int ) ;
 int glDisableClientState (int ) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnable (int ) ;
 int glEnableClientState (int ) ;
 int glLoadIdentity () ;
 int glLoadMatrixf (int const*) ;
 int glMatrixMode (int ) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glTexCoordPointer (int,int ,int ,void*) ;
 int glVertexPointer (int,int ,int ,float*) ;
 scalar_t__ malloc (int) ;
 int memcpy (float*,float*,int) ;
 scalar_t__ menu_display_gl1_get_default_mvp (TYPE_4__*) ;
 void* menu_display_gl1_get_default_tex_coords () ;
 float* menu_display_gl1_get_default_vertices () ;
 int menu_display_gl1_viewport (TYPE_5__*,TYPE_4__*) ;
 int menu_display_prim_to_gl1_enum (int ) ;
 float* vertices3 ;

__attribute__((used)) static void menu_display_gl1_draw(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   video_shader_ctx_mvp_t mvp;
   gl1_t *gl1 = (gl1_t*)video_info->userdata;

   if (!gl1 || !draw)
      return;

   if (!draw->coords->vertex)
      draw->coords->vertex = menu_display_gl1_get_default_vertices();
   if (!draw->coords->tex_coord)
      draw->coords->tex_coord = menu_display_gl1_get_default_tex_coords();
   if (!draw->coords->lut_tex_coord)
      draw->coords->lut_tex_coord = menu_display_gl1_get_default_tex_coords();

   menu_display_gl1_viewport(draw, video_info);

   glEnable(GL_TEXTURE_2D);

   glBindTexture(GL_TEXTURE_2D, (GLuint)draw->texture);

   mvp.data = gl1;
   mvp.matrix = draw->matrix_data ? (math_matrix_4x4*)draw->matrix_data
      : (math_matrix_4x4*)menu_display_gl1_get_default_mvp(video_info);

   glMatrixMode(GL_PROJECTION);
   glPushMatrix();
   glLoadMatrixf((const GLfloat*)mvp.matrix);

   glMatrixMode(GL_MODELVIEW);
   glPushMatrix();
   glLoadIdentity();

   glEnableClientState(GL_COLOR_ARRAY);
   glEnableClientState(GL_VERTEX_ARRAY);
   glEnableClientState(GL_TEXTURE_COORD_ARRAY);
   glVertexPointer(2, GL_FLOAT, 0, draw->coords->vertex);


   glColorPointer(4, GL_FLOAT, 0, draw->coords->color);
   glTexCoordPointer(2, GL_FLOAT, 0, draw->coords->tex_coord);

   glDrawArrays(menu_display_prim_to_gl1_enum(
            draw->prim_type), 0, draw->coords->vertices);

   glDisableClientState(GL_COLOR_ARRAY);
   glDisableClientState(GL_TEXTURE_COORD_ARRAY);
   glDisableClientState(GL_VERTEX_ARRAY);

   glMatrixMode(GL_MODELVIEW);
   glPopMatrix();
   glMatrixMode(GL_PROJECTION);
   glPopMatrix();

   gl1->coords.color = gl1->white_color_ptr;
}
