
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int last_width; unsigned int last_height; int tex; int pixel_size; int tex_h; int dev; } ;
typedef TYPE_1__ d3d8_renderchain_t ;
typedef int LPDIRECT3DDEVICE8 ;
typedef int D3DLOCKED_RECT ;


 int D3DLOCK_NOSYSLOCK ;
 int d3d8_frame_postprocess (TYPE_1__*) ;
 scalar_t__ d3d8_lock_rectangle (int ,int ,int *,int *,int ,int ) ;
 int d3d8_lock_rectangle_clear (int ,int ,int *,int *,int ,int ) ;
 int d3d8_set_texture (int ,int ,int *) ;
 int d3d8_texture_blit (int ,int ,int *,void const*,unsigned int,unsigned int,unsigned int) ;
 int d3d8_unlock_rectangle (int ) ;

__attribute__((used)) static void d3d8_renderchain_blit_to_texture(
      d3d8_renderchain_t *chain,
      const void *frame,
      unsigned width, unsigned height, unsigned pitch)
{
   D3DLOCKED_RECT d3dlr;
   LPDIRECT3DDEVICE8 d3dr = (LPDIRECT3DDEVICE8)chain->dev;

   d3d8_frame_postprocess(chain);

   if (chain->last_width != width || chain->last_height != height)
   {
      d3d8_lock_rectangle(chain->tex,
            0, &d3dlr, ((void*)0), chain->tex_h, D3DLOCK_NOSYSLOCK);
      d3d8_lock_rectangle_clear(chain->tex,
            0, &d3dlr, ((void*)0), chain->tex_h, D3DLOCK_NOSYSLOCK);
   }


   d3d8_set_texture(d3dr, 0, ((void*)0));

   if (d3d8_lock_rectangle(chain->tex, 0, &d3dlr, ((void*)0), 0, 0))
   {
      d3d8_texture_blit(chain->pixel_size, chain->tex,
            &d3dlr, frame, width, height, pitch);
      d3d8_unlock_rectangle(chain->tex);
   }
}
