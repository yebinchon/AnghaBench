
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rotation; } ;
typedef TYPE_1__ gl_t ;


 int default_ortho ;
 int gl2_set_projection (TYPE_1__*,int *,int) ;

__attribute__((used)) static void gl2_set_rotation(void *data, unsigned rotation)
{
   gl_t *gl = (gl_t*)data;

   if (!gl)
      return;

   gl->rotation = 90 * rotation;
   gl2_set_projection(gl, &default_ortho, 1);
}
