
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ renderchain_data; int dev; } ;
typedef TYPE_1__ d3d8_video_t ;
struct TYPE_10__ {int frame_count; } ;
typedef TYPE_2__ d3d8_renderchain_t ;
typedef int LPDIRECT3DDEVICE8 ;


 int d3d8_renderchain_blit_to_texture (TYPE_2__*,void const*,unsigned int,unsigned int,unsigned int) ;
 int d3d8_renderchain_render_pass (TYPE_1__*,int ,TYPE_2__*,int ,unsigned int) ;
 int d3d8_renderchain_set_vertices (TYPE_1__*,TYPE_2__*,int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static bool d3d8_renderchain_render(
      d3d8_video_t *d3d,
      const void *frame,
      unsigned frame_width, unsigned frame_height,
      unsigned pitch, unsigned rotation)
{
   LPDIRECT3DDEVICE8 d3dr = (LPDIRECT3DDEVICE8)d3d->dev;
   d3d8_renderchain_t *chain = (d3d8_renderchain_t*)d3d->renderchain_data;

   d3d8_renderchain_blit_to_texture(chain, frame, frame_width, frame_height, pitch);
   d3d8_renderchain_set_vertices(d3d, chain, 1, frame_width, frame_height, chain->frame_count);

   d3d8_renderchain_render_pass(d3d, d3dr, chain, 0, rotation);

   chain->frame_count++;

   return 1;
}
