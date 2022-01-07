
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int video_smooth; } ;
struct TYPE_9__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_10__ {int mvp_rotate; int dev; int final_viewport; } ;
typedef TYPE_3__ d3d8_video_t ;
struct TYPE_11__ {int vertex_buf; int dev; int tex; } ;
typedef TYPE_4__ d3d8_renderchain_t ;
typedef int Vertex ;
typedef int LPDIRECT3DDEVICE8 ;


 int D3DFVF_DIFFUSE ;
 int D3DFVF_TEX1 ;
 int D3DFVF_XYZ ;
 int D3DPT_TRIANGLESTRIP ;
 int D3DTEXF_LINEAR ;
 int D3DTEXF_POINT ;
 TYPE_2__* config_get_ptr () ;
 int d3d8_draw_primitive (int ,int ,int ,int) ;
 int d3d8_set_mvp (int ,int *) ;
 int d3d8_set_sampler_magfilter (int ,unsigned int,int ) ;
 int d3d8_set_sampler_minfilter (int ,unsigned int,int ) ;
 int d3d8_set_stream_source (int ,int ,int ,int ,int) ;
 int d3d8_set_texture (int ,int ,int ) ;
 int d3d8_set_vertex_shader (int ,int,int *) ;
 int d3d8_set_viewports (int ,int *) ;

__attribute__((used)) static void d3d8_renderchain_render_pass(
      d3d8_video_t *d3d, LPDIRECT3DDEVICE8 d3dr,
      d3d8_renderchain_t *chain,
      unsigned pass_index,
      unsigned rotation)
{
   settings_t *settings = config_get_ptr();
   bool video_smooth = settings->bools.video_smooth;

   d3d8_set_texture(d3dr, 0, chain->tex);
   d3d8_set_sampler_magfilter(d3dr, pass_index, video_smooth ?
         D3DTEXF_LINEAR : D3DTEXF_POINT);
   d3d8_set_sampler_minfilter(d3dr, pass_index, video_smooth ?
         D3DTEXF_LINEAR : D3DTEXF_POINT);

   d3d8_set_viewports(chain->dev, &d3d->final_viewport);
   d3d8_set_vertex_shader(d3dr,
         D3DFVF_XYZ | D3DFVF_TEX1 | D3DFVF_DIFFUSE,
         ((void*)0));
   d3d8_set_stream_source(d3dr, 0, chain->vertex_buf, 0, sizeof(Vertex));
   d3d8_set_mvp(d3d->dev, &d3d->mvp_rotate);
   d3d8_draw_primitive(d3dr, D3DPT_TRIANGLESTRIP, 0, 2);
}
