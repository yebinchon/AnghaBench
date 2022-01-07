
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* conv_buffer; struct TYPE_4__* empty_buf; } ;
typedef TYPE_1__ gl_t ;


 int free (TYPE_1__*) ;
 int gl_query_core_context_unset () ;
 int gl_shared_context_use ;

__attribute__((used)) static void gl2_destroy_resources(gl_t *gl)
{
   if (gl)
   {
      if (gl->empty_buf)
         free(gl->empty_buf);
      if (gl->conv_buffer)
         free(gl->conv_buffer);
      free(gl);
   }

   gl_shared_context_use = 0;

   gl_query_core_context_unset();
}
