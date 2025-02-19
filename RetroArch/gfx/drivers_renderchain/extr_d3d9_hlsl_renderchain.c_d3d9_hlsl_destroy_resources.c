
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* vertex_buf; scalar_t__* tex; } ;
struct TYPE_11__ {TYPE_3__* luts; TYPE_1__ prev; } ;
struct TYPE_12__ {TYPE_4__ chain; } ;
typedef TYPE_5__ hlsl_renderchain_t ;
struct TYPE_10__ {unsigned int count; TYPE_2__* data; } ;
struct TYPE_9__ {scalar_t__ tex; } ;


 unsigned int TEXTURES ;
 int d3d9_hlsl_deinit_progs (TYPE_5__*) ;
 int d3d9_texture_free (scalar_t__) ;
 int d3d9_vertex_buffer_free (scalar_t__,int *) ;

__attribute__((used)) static void d3d9_hlsl_destroy_resources(hlsl_renderchain_t *chain)
{
   unsigned i;

   for (i = 0; i < TEXTURES; i++)
   {
      if (chain->chain.prev.tex[i])
         d3d9_texture_free(chain->chain.prev.tex[i]);
      if (chain->chain.prev.vertex_buf[i])
         d3d9_vertex_buffer_free(chain->chain.prev.vertex_buf[i], ((void*)0));
   }

   d3d9_hlsl_deinit_progs(chain);

   for (i = 0; i < chain->chain.luts->count; i++)
   {
      if (chain->chain.luts->data[i].tex)
         d3d9_texture_free(chain->chain.luts->data[i].tex);
   }
}
