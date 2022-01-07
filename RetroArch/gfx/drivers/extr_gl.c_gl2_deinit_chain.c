
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * renderchain_data; } ;
typedef TYPE_1__ gl_t ;


 int free (int *) ;

__attribute__((used)) static void gl2_deinit_chain(gl_t *gl)
{
   if (!gl)
      return;

   if (gl->renderchain_data)
      free(gl->renderchain_data);
   gl->renderchain_data = ((void*)0);
}
