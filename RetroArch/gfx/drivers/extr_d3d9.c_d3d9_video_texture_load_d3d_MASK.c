#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct texture_image {int width; unsigned int height; int /*<<< orphan*/ * pixels; } ;
struct d3d9_texture_info {scalar_t__ type; scalar_t__ data; scalar_t__ userdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ d3d9_video_t ;
struct TYPE_5__ {int Pitch; scalar_t__ pBits; } ;
typedef  int /*<<< orphan*/ * LPDIRECT3DTEXTURE9 ;
typedef  TYPE_2__ D3DLOCKED_RECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DLOCK_NOSYSLOCK ; 
 int /*<<< orphan*/  D3DPOOL_MANAGED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ TEXTURE_FILTER_MIPMAP_LINEAR ; 
 scalar_t__ TEXTURE_FILTER_MIPMAP_NEAREST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(
      struct d3d9_texture_info *info,
      uintptr_t *id)
{
   D3DLOCKED_RECT d3dlr;
   LPDIRECT3DTEXTURE9 tex   = NULL;
   unsigned usage           = 0;
   bool want_mipmap         = false;
   d3d9_video_t *d3d        = (d3d9_video_t*)info->userdata;
   struct texture_image *ti = (struct texture_image*)info->data;

   if (!ti)
      return;

   if((info->type == TEXTURE_FILTER_MIPMAP_LINEAR) ||
      (info->type == TEXTURE_FILTER_MIPMAP_NEAREST))
      want_mipmap        = true;

   tex = (LPDIRECT3DTEXTURE9)FUNC3(d3d->dev, NULL,
               ti->width, ti->height, 0,
               usage, FUNC1(),
               D3DPOOL_MANAGED, 0, 0, 0,
               NULL, NULL, want_mipmap);

   if (!tex)
   {
      FUNC0("[D3D9]: Failed to create texture\n");
      return;
   }

   if (FUNC2(tex, 0, &d3dlr,
            NULL, 0, D3DLOCK_NOSYSLOCK))
   {
      unsigned i;
      uint32_t       *dst = (uint32_t*)(d3dlr.pBits);
      const uint32_t *src = ti->pixels;
      unsigned      pitch = d3dlr.Pitch >> 2;

      for (i = 0; i < ti->height; i++, dst += pitch, src += ti->width)
         FUNC5(dst, src, ti->width << 2);
      FUNC4(tex);
   }

   *id = (uintptr_t)tex;
}