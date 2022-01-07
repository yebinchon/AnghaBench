
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {TYPE_1__* menu; int dev; } ;
typedef TYPE_2__ d3d9_video_t ;
struct TYPE_7__ {int Pitch; scalar_t__ pBits; } ;
struct TYPE_5__ {unsigned int tex_w; unsigned int tex_h; float alpha_mod; scalar_t__ tex; } ;
typedef int LPDIRECT3DTEXTURE9 ;
typedef TYPE_3__ D3DLOCKED_RECT ;


 int D3DLOCK_NOSYSLOCK ;
 int D3DPOOL_MANAGED ;
 int RARCH_ERR (char*) ;
 int d3d9_get_argb8888_format () ;
 scalar_t__ d3d9_lock_rectangle (int ,int ,TYPE_3__*,int *,int ,int ) ;
 int d3d9_texture_free (int ) ;
 scalar_t__ d3d9_texture_new (int ,int *,unsigned int,unsigned int,int,int ,int ,int ,int ,int ,int ,int *,int *,int) ;
 int d3d9_unlock_rectangle (int ) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void d3d9_set_menu_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   D3DLOCKED_RECT d3dlr;
   d3d9_video_t *d3d = (d3d9_video_t*)data;

   (void)d3dlr;
   (void)frame;
   (void)rgb32;
   (void)width;
   (void)height;
   (void)alpha;

   if (!d3d || !d3d->menu)
      return;

   if ( !d3d->menu->tex ||
            d3d->menu->tex_w != width ||
            d3d->menu->tex_h != height)
   {
      d3d9_texture_free((LPDIRECT3DTEXTURE9)d3d->menu->tex);

      d3d->menu->tex = d3d9_texture_new(d3d->dev, ((void*)0),
            width, height, 1,
            0, d3d9_get_argb8888_format(),
            D3DPOOL_MANAGED, 0, 0, 0, ((void*)0), ((void*)0), 0);

      if (!d3d->menu->tex)
      {
         RARCH_ERR("[D3D9]: Failed to create menu texture.\n");
         return;
      }

      d3d->menu->tex_w = width;
      d3d->menu->tex_h = height;
   }

   d3d->menu->alpha_mod = alpha;

   if (d3d9_lock_rectangle((LPDIRECT3DTEXTURE9)d3d->menu->tex, 0, &d3dlr,
            ((void*)0), 0, D3DLOCK_NOSYSLOCK))
   {
      unsigned h, w;
      if (rgb32)
      {
         uint8_t *dst = (uint8_t*)d3dlr.pBits;
         const uint32_t *src = (const uint32_t*)frame;

         for (h = 0; h < height; h++, dst += d3dlr.Pitch, src += width)
         {
            memcpy(dst, src, width * sizeof(uint32_t));
            memset(dst + width * sizeof(uint32_t), 0,
                  d3dlr.Pitch - width * sizeof(uint32_t));
         }
      }
      else
      {
         uint32_t *dst = (uint32_t*)d3dlr.pBits;
         const uint16_t *src = (const uint16_t*)frame;

         for (h = 0; h < height; h++, dst += d3dlr.Pitch >> 2, src += width)
         {
            for (w = 0; w < width; w++)
            {
               uint16_t c = src[w];
               uint32_t r = (c >> 12) & 0xf;
               uint32_t g = (c >> 8) & 0xf;
               uint32_t b = (c >> 4) & 0xf;
               uint32_t a = (c >> 0) & 0xf;
               r = ((r << 4) | r) << 16;
               g = ((g << 4) | g) << 8;
               b = ((b << 4) | b) << 0;
               a = ((a << 4) | a) << 24;
               dst[w] = r | g | b | a;
            }
         }
      }

      if (d3d->menu)
         d3d9_unlock_rectangle((LPDIRECT3DTEXTURE9)d3d->menu->tex);
   }
}
