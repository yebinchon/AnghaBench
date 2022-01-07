
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fence_count; scalar_t__* fences; } ;
typedef TYPE_1__ gl_core_t ;


 int glDeleteSync (scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static void gl_core_deinit_fences(gl_core_t *gl)
{
   unsigned i;
   for (i = 0; i < gl->fence_count; i++)
   {
      if (gl->fences[i])
         glDeleteSync(gl->fences[i]);
   }
   gl->fence_count = 0;
   memset(gl->fences, 0, sizeof(gl->fences));
}
