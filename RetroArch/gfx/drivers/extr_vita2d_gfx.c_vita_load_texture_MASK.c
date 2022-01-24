#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct vita2d_texture {int dummy; } ;
struct texture_image {unsigned int width; unsigned int height; int /*<<< orphan*/ * pixels; } ;
typedef  enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;

/* Variables and functions */
 int /*<<< orphan*/  SCE_GXM_TEXTURE_FILTER_LINEAR ; 
 int /*<<< orphan*/  SCE_GXM_TEXTURE_FORMAT_U8U8U8U8_ARGB ; 
 int TEXTURE_FILTER_LINEAR ; 
 int TEXTURE_FILTER_MIPMAP_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 struct vita2d_texture* FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct vita2d_texture*) ; 
 unsigned int FUNC3 (struct vita2d_texture*) ; 
 int /*<<< orphan*/  FUNC4 (struct vita2d_texture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uintptr_t FUNC5(void *video_data, void *data,
      bool threaded, enum texture_filter_type filter_type)
{
   unsigned int stride, pitch, j;
   uint32_t             *tex32    = NULL;
   const uint32_t *frame32        = NULL;
   struct texture_image *image    = (struct texture_image*)data;
   struct vita2d_texture *texture = FUNC1(image->width,
     image->height,SCE_GXM_TEXTURE_FORMAT_U8U8U8U8_ARGB);

   if (!texture)
      return 0;

   if ((filter_type == TEXTURE_FILTER_MIPMAP_LINEAR) ||
      (filter_type == TEXTURE_FILTER_LINEAR))
      FUNC4(texture,
            SCE_GXM_TEXTURE_FILTER_LINEAR,
            SCE_GXM_TEXTURE_FILTER_LINEAR);

   stride                      = FUNC3(texture);
   stride                     /= 4;

   tex32                       = FUNC2(texture);
   frame32                     = image->pixels;
   pitch                       = image->width;

   for (j = 0; j < image->height; j++)
         FUNC0(
               &tex32[j*stride],
               &frame32[j*pitch],
               pitch * sizeof(uint32_t));

   return (uintptr_t)texture;
}