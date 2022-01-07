
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_materials; TYPE_2__* material; } ;
typedef TYPE_1__ WAVEFRONT_MODEL_T ;
struct TYPE_6__ {int numverts; scalar_t__ vbo; } ;
typedef TYPE_2__ WAVEFRONT_MATERIAL_T ;
typedef int MODEL_T ;


 int GL_ARRAY_BUFFER ;
 int MAX_VERTICES ;
 scalar_t__ VBO_NORMAL ;
 scalar_t__ VBO_TEXTURE ;
 scalar_t__ VBO_VERTEX ;
 float* allocbuffer (int) ;
 int countof (unsigned short const*) ;
 int create_vbo (int ,scalar_t__,int,float*) ;
 int deindex (float*,float const*,unsigned short const*,int,int) ;
 int freebuffer (float*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

MODEL_T cube_wavefront(void)
{
   static const float qv[] = {
    -0.5f, -0.5f, 0.5f,
    -0.5f, -0.5f, -0.5f,
     0.5f, -0.5f, -0.5f,
     0.5f, -0.5f, 0.5f,
    -0.5f, 0.5f, 0.5f,
     0.5f, 0.5f, 0.5f,
     0.5f, 0.5f, -0.5f,
    -0.5f, 0.5f, -0.5f,
   };

   static const float qn[] = {
     0.0f, -1.0f, -0.0f,
     0.0f, 1.0f, -0.0f,
     0.0f, 0.0f, 1.0f,
     1.0f, 0.0f, -0.0f,
     0.0f, 0.0f, -1.0f,
    -1.0f, 0.0f, -0.0f,
   };

   static const float qt[] = {
    1.0f, 0.0f,
    1.0f, 1.0f,
    0.0f, 1.0f,
    0.0f, 0.0f,
   };

   static const unsigned short qf[] = {
    1,1,1, 2,2,1, 3,3,1,
    3,3,1, 4,4,1, 1,1,1,
    5,4,2, 6,1,2, 7,2,2,
    7,2,2, 8,3,2, 5,4,2,
    1,4,3, 4,1,3, 6,2,3,
    6,2,3, 5,3,3, 1,4,3,
    4,4,4, 3,1,4, 7,2,4,
    7,2,4, 6,3,4, 4,4,4,
    3,4,5, 2,1,5, 8,2,5,
    8,2,5, 7,3,5, 3,4,5,
    2,4,6, 1,1,6, 5,2,6,
    5,2,6, 8,3,6, 2,4,6,
   };
   WAVEFRONT_MODEL_T *model = malloc(sizeof *model);
   if (model) {
      WAVEFRONT_MATERIAL_T *mat = model->material;
      float *temp;
      const int offset = 0;
      memset(model, 0, sizeof *model);

      temp = allocbuffer(3*MAX_VERTICES*sizeof *temp);
      mat->numverts = countof(qf)/3;

      deindex(temp, qv, qf+3*offset+0, 3, mat->numverts);
      create_vbo(GL_ARRAY_BUFFER, mat->vbo+VBO_VERTEX, 3 * mat->numverts * sizeof *qv, temp);

      deindex(temp, qt, qf+3*offset+1, 2, mat->numverts);
      create_vbo(GL_ARRAY_BUFFER, mat->vbo+VBO_TEXTURE, 2 * mat->numverts * sizeof *qt, temp);

      deindex(temp, qn, qf+3*offset+2, 3, mat->numverts);
      create_vbo(GL_ARRAY_BUFFER, mat->vbo+VBO_NORMAL, 3 * mat->numverts * sizeof *qn, temp);

      freebuffer(temp);
      model->num_materials = 1;
   }
   return (MODEL_T)model;
}
