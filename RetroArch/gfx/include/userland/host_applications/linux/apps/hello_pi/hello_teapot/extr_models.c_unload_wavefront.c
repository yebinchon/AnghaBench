
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_materials; TYPE_2__* material; } ;
typedef TYPE_1__ WAVEFRONT_MODEL_T ;
struct TYPE_4__ {scalar_t__* vbo; } ;
typedef TYPE_2__ WAVEFRONT_MATERIAL_T ;
typedef scalar_t__ MODEL_T ;


 size_t VBO_NORMAL ;
 size_t VBO_TEXTURE ;
 size_t VBO_VERTEX ;
 int destroy_vbo (scalar_t__*) ;

void unload_wavefront(MODEL_T m)
{
   WAVEFRONT_MODEL_T *model = (WAVEFRONT_MODEL_T *)m;
   int i;
   for (i=0; i<model->num_materials; i++) {
      WAVEFRONT_MATERIAL_T *mat = model->material + i;
      if (mat->vbo[VBO_VERTEX])
         destroy_vbo(mat->vbo+VBO_VERTEX);
      if (mat->vbo[VBO_TEXTURE])
         destroy_vbo(mat->vbo+VBO_TEXTURE);
      if (mat->vbo[VBO_NORMAL])
         destroy_vbo(mat->vbo+VBO_NORMAL);
   }
}
