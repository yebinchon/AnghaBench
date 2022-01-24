#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int Height; unsigned int Y; unsigned int Width; int /*<<< orphan*/  X; } ;
struct TYPE_6__ {TYPE_1__ final_viewport; int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ d3d9_video_t ;
struct TYPE_7__ {int Pitch; scalar_t__ pBits; } ;
typedef  int /*<<< orphan*/ * LPDIRECT3DSURFACE9 ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE9 ;
typedef  TYPE_3__ D3DLOCKED_RECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DPOOL_SYSTEMMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static bool FUNC8(void *data, uint8_t *buffer, bool is_idle)
{
   unsigned width, height;
   D3DLOCKED_RECT rect;
   LPDIRECT3DSURFACE9 target = NULL;
   LPDIRECT3DSURFACE9 dest   = NULL;
   bool ret                  = true;
   d3d9_video_t *d3d         = (d3d9_video_t*)data;
   LPDIRECT3DDEVICE9 d3dr    = d3d->dev;

   FUNC7(&width, &height);

   if (
         !FUNC1(d3dr, 0, (void**)&target)     ||
         !FUNC0(d3dr, width, height,
            FUNC3(),
            D3DPOOL_SYSTEMMEM, (void**)&dest, NULL) ||
         !FUNC2(d3dr, target, dest)
         )
   {
      ret = false;
      goto end;
   }

   if (FUNC5(dest, &rect))
   {
      unsigned x, y;
      unsigned pitchpix       = rect.Pitch / 4;
      const uint32_t *pixels  = (const uint32_t*)rect.pBits;

      pixels                 += d3d->final_viewport.X;
      pixels                 += (d3d->final_viewport.Height - 1) * pitchpix;
      pixels                 -= d3d->final_viewport.Y * pitchpix;

      for (y = 0; y < d3d->final_viewport.Height; y++, pixels -= pitchpix)
      {
         for (x = 0; x < d3d->final_viewport.Width; x++)
         {
            *buffer++ = (pixels[x] >>  0) & 0xff;
            *buffer++ = (pixels[x] >>  8) & 0xff;
            *buffer++ = (pixels[x] >> 16) & 0xff;
         }
      }

      FUNC6(dest);
   }
   else
      ret = false;

end:
   if (target)
      FUNC4(target);
   if (dest)
      FUNC4(dest);
   return ret;
}