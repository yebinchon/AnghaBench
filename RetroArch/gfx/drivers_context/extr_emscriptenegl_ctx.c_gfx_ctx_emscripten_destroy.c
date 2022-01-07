
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int egl; } ;
typedef TYPE_1__ emscripten_ctx_data_t ;


 int egl_destroy (int *) ;
 int free (void*) ;

__attribute__((used)) static void gfx_ctx_emscripten_destroy(void *data)
{
   emscripten_ctx_data_t *emscripten = (emscripten_ctx_data_t*)data;

   if (!emscripten)
      return;

   egl_destroy(&emscripten->egl);

   free(data);
}
