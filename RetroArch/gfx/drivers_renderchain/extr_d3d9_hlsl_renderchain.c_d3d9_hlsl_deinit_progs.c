
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* passes; } ;
struct TYPE_9__ {TYPE_3__ chain; } ;
typedef TYPE_4__ hlsl_renderchain_t ;
struct TYPE_7__ {int count; TYPE_1__* data; } ;
struct TYPE_6__ {int vertex_decl; int * vertex_buf; int * tex; } ;


 int RARCH_LOG (char*) ;
 int d3d9_texture_free (int *) ;
 int d3d9_vertex_buffer_free (int *,int ) ;

__attribute__((used)) static void d3d9_hlsl_deinit_progs(hlsl_renderchain_t *chain)
{
   RARCH_LOG("[D3D9 HLSL]: Destroying programs.\n");

   if (chain->chain.passes->count >= 1)
   {
      unsigned i;

      d3d9_vertex_buffer_free(((void*)0), chain->chain.passes->data[0].vertex_decl);

      for (i = 1; i < chain->chain.passes->count; i++)
      {
         if (chain->chain.passes->data[i].tex)
            d3d9_texture_free(chain->chain.passes->data[i].tex);
         chain->chain.passes->data[i].tex = ((void*)0);
         d3d9_vertex_buffer_free(
               chain->chain.passes->data[i].vertex_buf,
               chain->chain.passes->data[i].vertex_decl);
      }
   }
}
