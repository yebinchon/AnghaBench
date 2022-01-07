
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rgb32; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_8__ {int dev; } ;
typedef TYPE_2__ d3d8_video_t ;
struct TYPE_9__ {scalar_t__ tex; int tex_h; int tex_w; scalar_t__ vertex_buf; } ;
typedef TYPE_3__ d3d8_renderchain_t ;
typedef int Vertex ;
typedef scalar_t__ LPDIRECT3DVERTEXBUFFER8 ;
typedef scalar_t__ LPDIRECT3DTEXTURE8 ;
typedef int LPDIRECT3DDEVICE8 ;


 int D3DCULL_NONE ;
 int D3DFVF_DIFFUSE ;
 int D3DFVF_TEX1 ;
 int D3DFVF_XYZ ;
 int D3DPOOL_MANAGED ;
 int D3DRS_CULLMODE ;
 int D3DRS_LIGHTING ;
 int D3DRS_ZENABLE ;
 int D3DTADDRESS_BORDER ;
 int D3DUSAGE_WRITEONLY ;
 int FALSE ;
 int d3d8_get_rgb565_format () ;
 int d3d8_get_xrgb8888_format () ;
 int d3d8_set_render_state (int ,int ,int ) ;
 int d3d8_set_sampler_address_u (int ,int ,int ) ;
 int d3d8_set_sampler_address_v (int ,int ,int ) ;
 scalar_t__ d3d8_texture_new (int ,int *,int ,int ,int,int ,int ,int ,int ,int ,int ,int *,int *,int) ;
 scalar_t__ d3d8_vertex_buffer_new (int ,int,int ,int,int ,int *) ;

__attribute__((used)) static bool d3d8_renderchain_create_first_pass(
      d3d8_video_t *d3d,
      d3d8_renderchain_t *chain,
      const video_info_t *info)
{
   LPDIRECT3DDEVICE8 d3dr = (LPDIRECT3DDEVICE8)d3d->dev;

   chain->vertex_buf = (LPDIRECT3DVERTEXBUFFER8)d3d8_vertex_buffer_new(d3dr, 4 * sizeof(Vertex),
         D3DUSAGE_WRITEONLY,
         D3DFVF_XYZ | D3DFVF_TEX1 | D3DFVF_DIFFUSE,
         D3DPOOL_MANAGED,
         ((void*)0));

   if (!chain->vertex_buf)
      return 0;

   chain->tex = (LPDIRECT3DTEXTURE8)d3d8_texture_new(d3dr, ((void*)0),
         chain->tex_w, chain->tex_h, 1, 0,
         info->rgb32
         ?
         d3d8_get_xrgb8888_format() : d3d8_get_rgb565_format(),
         D3DPOOL_MANAGED, 0, 0, 0, ((void*)0), ((void*)0),
         0);

   if (!chain->tex)
      return 0;

   d3d8_set_sampler_address_u(d3dr, 0, D3DTADDRESS_BORDER);
   d3d8_set_sampler_address_v(d3dr, 0, D3DTADDRESS_BORDER);
   d3d8_set_render_state(d3dr, D3DRS_LIGHTING, 0);
   d3d8_set_render_state(d3dr, D3DRS_CULLMODE, D3DCULL_NONE);
   d3d8_set_render_state(d3dr, D3DRS_ZENABLE, FALSE);

   return 1;
}
