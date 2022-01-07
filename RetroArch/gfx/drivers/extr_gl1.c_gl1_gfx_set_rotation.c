
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rotation; } ;
typedef TYPE_1__ gl1_t ;


 int gl1_default_ortho ;
 int gl1_set_projection (TYPE_1__*,int *,int) ;

__attribute__((used)) static void gl1_gfx_set_rotation(void *data,
      unsigned rotation)
{
   gl1_t *gl1 = (gl1_t*)data;

   if (!gl1)
      return;

   gl1->rotation = 90 * rotation;
   gl1_set_projection(gl1, &gl1_default_ortho, 1);
}
