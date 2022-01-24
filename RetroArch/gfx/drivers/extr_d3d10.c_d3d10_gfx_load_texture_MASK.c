#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct texture_image {int /*<<< orphan*/  pixels; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
struct TYPE_7__ {int /*<<< orphan*/  device; int /*<<< orphan*/ ** samplers; } ;
typedef  TYPE_2__ d3d10_video_t ;
struct TYPE_6__ {int /*<<< orphan*/  Format; int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; void* MiscFlags; } ;
struct TYPE_8__ {TYPE_1__ desc; int /*<<< orphan*/  sampler; } ;
typedef  TYPE_3__ d3d10_texture_t ;

/* Variables and functions */
 void* D3D10_RESOURCE_MISC_GENERATE_MIPS ; 
 int /*<<< orphan*/  DXGI_FORMAT_B8G8R8A8_UNORM ; 
 size_t RARCH_FILTER_LINEAR ; 
 size_t RARCH_FILTER_NEAREST ; 
 size_t RARCH_WRAP_EDGE ; 
#define  TEXTURE_FILTER_LINEAR 131 
#define  TEXTURE_FILTER_MIPMAP_LINEAR 130 
#define  TEXTURE_FILTER_MIPMAP_NEAREST 129 
#define  TEXTURE_FILTER_NEAREST 128 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static uintptr_t FUNC3(
      void* video_data, void* data, bool threaded, enum texture_filter_type filter_type)
{
   d3d10_texture_t*      texture = NULL;
   d3d10_video_t*        d3d10   = (d3d10_video_t*)video_data;
   struct texture_image* image   = (struct texture_image*)data;

   if (!d3d10)
      return 0;

   texture = (d3d10_texture_t*)FUNC0(1, sizeof(*texture));

   if (!texture)
      return 0;

   switch (filter_type)
   {
      case TEXTURE_FILTER_MIPMAP_LINEAR:
         texture->desc.MiscFlags = D3D10_RESOURCE_MISC_GENERATE_MIPS;
         /* fallthrough */
      case TEXTURE_FILTER_LINEAR:
         texture->sampler = d3d10->samplers[RARCH_FILTER_LINEAR][RARCH_WRAP_EDGE];
         break;
      case TEXTURE_FILTER_MIPMAP_NEAREST:
         texture->desc.MiscFlags = D3D10_RESOURCE_MISC_GENERATE_MIPS;
         /* fallthrough */
      case TEXTURE_FILTER_NEAREST:
         texture->sampler = d3d10->samplers[RARCH_FILTER_NEAREST][RARCH_WRAP_EDGE];
         break;
   }

   texture->desc.Width  = image->width;
   texture->desc.Height = image->height;
   texture->desc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;

   FUNC1(d3d10->device, texture);

   FUNC2(
         d3d10->device,
         image->width, image->height, 0, DXGI_FORMAT_B8G8R8A8_UNORM, image->pixels,
         texture);

   return (uintptr_t)texture;
}