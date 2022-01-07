
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vertex_decl; int vertex_buf; scalar_t__ tex; } ;
typedef TYPE_1__ d3d8_renderchain_t ;


 int d3d8_texture_free (scalar_t__) ;
 int d3d8_vertex_buffer_free (int ,int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void d3d8_renderchain_free(void *data)
{
   d3d8_renderchain_t *chain = (d3d8_renderchain_t*)data;

   if (!chain)
      return;

   if (chain->tex)
      d3d8_texture_free(chain->tex);
   d3d8_vertex_buffer_free(chain->vertex_buf, chain->vertex_decl);

   free(chain);
}
