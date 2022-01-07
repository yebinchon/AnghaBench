
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ texture; } ;
typedef TYPE_1__ menu_display_ctx_draw_t ;
struct TYPE_6__ {int dev; } ;
typedef TYPE_2__ d3d8_video_t ;
typedef int LPDIRECT3DDEVICE8 ;


 int D3DTADDRESS_COMM_CLAMP ;
 int D3DTEXF_COMM_LINEAR ;
 int d3d8_set_sampler_address_u (int ,int ,int ) ;
 int d3d8_set_sampler_address_v (int ,int ,int ) ;
 int d3d8_set_sampler_magfilter (int ,int ,int ) ;
 int d3d8_set_sampler_minfilter (int ,int ,int ) ;
 int d3d8_set_texture (int ,int ,void*) ;

__attribute__((used)) static void menu_display_d3d8_bind_texture(menu_display_ctx_draw_t *draw,
      d3d8_video_t *d3d)
{
   LPDIRECT3DDEVICE8 dev = d3d->dev;

   d3d8_set_texture(d3d->dev, 0, (void*)draw->texture);
   d3d8_set_sampler_address_u(d3d->dev, 0, D3DTADDRESS_COMM_CLAMP);
   d3d8_set_sampler_address_v(d3d->dev, 0, D3DTADDRESS_COMM_CLAMP);
   d3d8_set_sampler_minfilter(d3d->dev, 0, D3DTEXF_COMM_LINEAR);
   d3d8_set_sampler_magfilter(d3d->dev, 0, D3DTEXF_COMM_LINEAR);
}
