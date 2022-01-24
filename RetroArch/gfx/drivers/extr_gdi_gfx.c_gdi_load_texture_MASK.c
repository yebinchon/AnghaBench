#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct texture_image {int width; int height; int /*<<< orphan*/  pixels; } ;
struct TYPE_3__ {int width; int height; int active_width; int active_height; int type; scalar_t__ data; } ;
typedef  TYPE_1__ gdi_texture_t ;
typedef  enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uintptr_t FUNC3(void *video_data, void *data,
      bool threaded, enum texture_filter_type filter_type)
{
   void *tmpdata               = NULL;
   gdi_texture_t *texture      = NULL;
   struct texture_image *image = (struct texture_image*)data;

   if (!image || image->width > 2048 || image->height > 2048)
      return 0;

   texture                     = (gdi_texture_t*)FUNC0(1, sizeof(*texture));

   if (!texture)
      return 0;

   texture->width              = image->width;
   texture->height             = image->height;
   texture->active_width       = image->width;
   texture->active_height      = image->height;
   texture->data               = FUNC0(1,
         texture->width * texture->height * sizeof(uint32_t));
   texture->type               = filter_type;

   if (!texture->data)
   {
      FUNC1(texture);
      return 0;
   }

   FUNC2(texture->data, image->pixels,
         texture->width * texture->height * sizeof(uint32_t));

   return (uintptr_t)texture;
}