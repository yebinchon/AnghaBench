
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* pass; } ;
struct shader_pass {int vprg; int fprg; int vertex_buf; int vertex_decl; TYPE_2__ info; int tex; } ;
struct D3D9Vertex {int dummy; } ;
struct TYPE_17__ {int dev; } ;
struct TYPE_16__ {TYPE_7__ chain; TYPE_4__* luts; int dev; } ;
typedef TYPE_5__ hlsl_renderchain_t ;
struct TYPE_15__ {unsigned int count; TYPE_3__* data; } ;
struct TYPE_14__ {int id; } ;
struct TYPE_12__ {int filter; } ;
typedef scalar_t__ CGparameter ;


 int D3DPT_TRIANGLESTRIP ;
 int D3DTEXF_POINT ;
 unsigned int cgGetParameterResourceIndex (scalar_t__) ;
 int d3d9_draw_primitive (int ,int ,int ,int) ;
 int d3d9_hlsl_bind_program (struct shader_pass*,int ) ;
 scalar_t__ d3d9_hlsl_get_constant_by_name (int ,int ) ;
 int d3d9_hlsl_renderchain_bind_orig (TYPE_5__*,int ,struct shader_pass*) ;
 int d3d9_hlsl_renderchain_bind_pass (TYPE_5__*,int ,struct shader_pass*,unsigned int) ;
 int d3d9_hlsl_renderchain_bind_prev (TYPE_5__*,int ,struct shader_pass*) ;
 int d3d9_renderchain_add_lut_internal (TYPE_5__*,unsigned int,unsigned int) ;
 int d3d9_renderchain_unbind_all (TYPE_7__*) ;
 int d3d9_set_sampler_magfilter (int ,int ,int ) ;
 int d3d9_set_sampler_minfilter (int ,int ,int ) ;
 int d3d9_set_stream_source (int ,unsigned int,int ,int ,int) ;
 int d3d9_set_texture (int ,int ,int ) ;
 int d3d9_set_vertex_declaration (int ,int ) ;
 int d3d_translate_filter (int ) ;

__attribute__((used)) static void hlsl_d3d9_renderchain_render_pass(
      hlsl_renderchain_t *chain,
      struct shader_pass *pass,
      unsigned pass_index)
{
   unsigned i;

   d3d9_hlsl_bind_program(pass, chain->chain.dev);

   d3d9_set_texture(chain->chain.dev, 0, pass->tex);
   d3d9_set_sampler_minfilter(chain->chain.dev, 0,
         d3d_translate_filter(pass->info.pass->filter));
   d3d9_set_sampler_magfilter(chain->chain.dev, 0,
         d3d_translate_filter(pass->info.pass->filter));

   d3d9_set_vertex_declaration(chain->chain.dev, pass->vertex_decl);
   for (i = 0; i < 4; i++)
      d3d9_set_stream_source(chain->chain.dev, i,
            pass->vertex_buf, 0,
            sizeof(struct D3D9Vertex));
   d3d9_draw_primitive(chain->chain.dev, D3DPT_TRIANGLESTRIP, 0, 2);



   d3d9_set_sampler_minfilter(chain->chain.dev, 0, D3DTEXF_POINT);
   d3d9_set_sampler_magfilter(chain->chain.dev, 0, D3DTEXF_POINT);

   d3d9_renderchain_unbind_all(&chain->chain);
}
