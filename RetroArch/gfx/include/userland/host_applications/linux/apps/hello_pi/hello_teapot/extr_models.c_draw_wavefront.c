
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_materials; TYPE_2__* material; } ;
typedef TYPE_1__ WAVEFRONT_MODEL_T ;
struct TYPE_4__ {int texture; int numverts; scalar_t__* vbo; } ;
typedef TYPE_2__ WAVEFRONT_MATERIAL_T ;
typedef scalar_t__ MODEL_T ;
typedef int GLuint ;


 int GL_ARRAY_BUFFER ;
 int GL_FLOAT ;
 int GL_NORMAL_ARRAY ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TRIANGLES ;
 size_t VBO_NORMAL ;
 size_t VBO_TEXTURE ;
 size_t VBO_VERTEX ;
 int glBindBuffer (int ,scalar_t__) ;
 int glBindTexture (int ,int) ;
 int glDisableClientState (int ) ;
 int glDrawArrays (int ,int ,int ) ;
 int glEnableClientState (int ) ;
 int glNormalPointer (int ,int ,int *) ;
 int glTexCoordPointer (int,int ,int ,int *) ;
 int glVertexPointer (int,int ,int ,int *) ;

int draw_wavefront(MODEL_T m, GLuint texture)
{
   int i;
   WAVEFRONT_MODEL_T *model = (WAVEFRONT_MODEL_T *)m;

   for (i=0; i<model->num_materials; i++) {
      WAVEFRONT_MATERIAL_T *mat = model->material + i;
      if (mat->texture == -1) continue;
      glBindTexture(GL_TEXTURE_2D, mat->texture ? mat->texture:texture);
      if (mat->vbo[VBO_VERTEX]) {
         glBindBuffer(GL_ARRAY_BUFFER, mat->vbo[VBO_VERTEX]);
         glVertexPointer(3, GL_FLOAT, 0, ((void*)0));
      }
      if (mat->vbo[VBO_NORMAL]) {
         glEnableClientState(GL_NORMAL_ARRAY);
         glBindBuffer(GL_ARRAY_BUFFER, mat->vbo[VBO_NORMAL]);
         glNormalPointer(GL_FLOAT, 0, ((void*)0));
      } else {
         glDisableClientState(GL_NORMAL_ARRAY);
      }
      if (mat->vbo[VBO_TEXTURE]) {
         glEnableClientState(GL_TEXTURE_COORD_ARRAY);
         glBindBuffer(GL_ARRAY_BUFFER, mat->vbo[VBO_TEXTURE]);
         glTexCoordPointer(2, GL_FLOAT, 0, ((void*)0));
      } else {
         glDisableClientState(GL_TEXTURE_COORD_ARRAY);
      }
      glDrawArrays(GL_TRIANGLES, 0, mat->numverts);
   }
   glBindBuffer(GL_ARRAY_BUFFER, 0);
   return 0;
}
