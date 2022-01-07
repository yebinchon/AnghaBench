
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chain; } ;
typedef TYPE_1__ hlsl_renderchain_t ;


 int d3d9_hlsl_destroy_resources (TYPE_1__*) ;
 int d3d9_renderchain_destroy_passes_and_luts (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void hlsl_d3d9_renderchain_free(void *data)
{
   hlsl_renderchain_t *chain = (hlsl_renderchain_t*)data;

   if (!chain)
      return;

   d3d9_hlsl_destroy_resources(chain);
   d3d9_renderchain_destroy_passes_and_luts(&chain->chain);
   free(chain);
}
