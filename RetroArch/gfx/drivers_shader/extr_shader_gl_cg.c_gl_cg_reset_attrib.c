
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int attribs_index; int * attribs_elems; } ;
typedef TYPE_1__ cg_shader_data_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int cgGLDisableClientState (int ) ;
 int retro_assert (int) ;

__attribute__((used)) static void gl_cg_reset_attrib(void *data)
{
   unsigned i;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;


   retro_assert(cg->attribs_index <= ARRAY_SIZE(cg->attribs_elems));

   for (i = 0; i < cg->attribs_index; i++)
      cgGLDisableClientState(cg->attribs_elems[i]);
   cg->attribs_index = 0;
}
