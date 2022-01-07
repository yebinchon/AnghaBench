
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int Height; unsigned int Y; unsigned int Width; int X; } ;
struct TYPE_6__ {TYPE_1__ final_viewport; int dev; } ;
typedef TYPE_2__ d3d9_video_t ;
struct TYPE_7__ {int Pitch; scalar_t__ pBits; } ;
typedef int * LPDIRECT3DSURFACE9 ;
typedef int LPDIRECT3DDEVICE9 ;
typedef TYPE_3__ D3DLOCKED_RECT ;


 int D3DPOOL_SYSTEMMEM ;
 int d3d9_device_create_offscreen_plain_surface (int ,unsigned int,unsigned int,int ,int ,void**,int *) ;
 int d3d9_device_get_render_target (int ,int ,void**) ;
 int d3d9_device_get_render_target_data (int ,int *,int *) ;
 int d3d9_get_xrgb8888_format () ;
 int d3d9_surface_free (int *) ;
 scalar_t__ d3d9_surface_lock_rect (int *,TYPE_3__*) ;
 int d3d9_surface_unlock_rect (int *) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static bool d3d9_read_viewport(void *data, uint8_t *buffer, bool is_idle)
{
   unsigned width, height;
   D3DLOCKED_RECT rect;
   LPDIRECT3DSURFACE9 target = ((void*)0);
   LPDIRECT3DSURFACE9 dest = ((void*)0);
   bool ret = 1;
   d3d9_video_t *d3d = (d3d9_video_t*)data;
   LPDIRECT3DDEVICE9 d3dr = d3d->dev;

   video_driver_get_size(&width, &height);

   if (
         !d3d9_device_get_render_target(d3dr, 0, (void**)&target) ||
         !d3d9_device_create_offscreen_plain_surface(d3dr, width, height,
            d3d9_get_xrgb8888_format(),
            D3DPOOL_SYSTEMMEM, (void**)&dest, ((void*)0)) ||
         !d3d9_device_get_render_target_data(d3dr, target, dest)
         )
   {
      ret = 0;
      goto end;
   }

   if (d3d9_surface_lock_rect(dest, &rect))
   {
      unsigned x, y;
      unsigned pitchpix = rect.Pitch / 4;
      const uint32_t *pixels = (const uint32_t*)rect.pBits;

      pixels += d3d->final_viewport.X;
      pixels += (d3d->final_viewport.Height - 1) * pitchpix;
      pixels -= d3d->final_viewport.Y * pitchpix;

      for (y = 0; y < d3d->final_viewport.Height; y++, pixels -= pitchpix)
      {
         for (x = 0; x < d3d->final_viewport.Width; x++)
         {
            *buffer++ = (pixels[x] >> 0) & 0xff;
            *buffer++ = (pixels[x] >> 8) & 0xff;
            *buffer++ = (pixels[x] >> 16) & 0xff;
         }
      }

      d3d9_surface_unlock_rect(dest);
   }
   else
      ret = 0;

end:
   if (target)
      d3d9_surface_free(target);
   if (dest)
      d3d9_surface_free(dest);
   return ret;
}
