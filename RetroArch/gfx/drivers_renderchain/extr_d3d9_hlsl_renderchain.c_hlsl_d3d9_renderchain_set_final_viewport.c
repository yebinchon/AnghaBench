
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chain; } ;
typedef TYPE_1__ hlsl_renderchain_t ;
typedef int d3d9_video_t ;
struct TYPE_5__ {int dev; int * final_viewport; } ;
typedef TYPE_2__ d3d9_renderchain_t ;
typedef int D3DVIEWPORT9 ;


 int d3d9_recompute_pass_sizes (int ,TYPE_2__*,int *) ;

__attribute__((used)) static void hlsl_d3d9_renderchain_set_final_viewport(
      d3d9_video_t *d3d,
      void *renderchain_data,
      const D3DVIEWPORT9 *final_viewport)
{
   hlsl_renderchain_t *_chain = (hlsl_renderchain_t*)renderchain_data;
   d3d9_renderchain_t *chain = (d3d9_renderchain_t*)&_chain->chain;

   if (chain && final_viewport)
      chain->final_viewport = (D3DVIEWPORT9*)final_viewport;

   d3d9_recompute_pass_sizes(chain->dev, chain, d3d);
}
