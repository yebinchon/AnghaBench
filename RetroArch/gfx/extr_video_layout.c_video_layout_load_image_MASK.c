#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct texture_image {int /*<<< orphan*/  supports_rgba; } ;
typedef  int /*<<< orphan*/  respath ;
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  video_driver_data; } ;
struct TYPE_6__ {int images_count; void** images; TYPE_2__ render_info; TYPE_1__* render; int /*<<< orphan*/  base_path; scalar_t__ is_archive; } ;
struct TYPE_4__ {void* (* take_image ) (int /*<<< orphan*/ ,struct texture_image) ;} ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void**,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct texture_image*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct texture_image*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,struct texture_image) ; 
 int /*<<< orphan*/  FUNC9 (void**,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_3__* video_layout_state ; 

__attribute__((used)) static int FUNC11(const char *path)
{
   struct texture_image image;
   void *handle;
   int index;

   image.supports_rgba = FUNC10();

   if (video_layout_state->is_archive)
   {
      void *buf;
      int64_t len;

      char respath[PATH_MAX_LENGTH];
      FUNC7(respath, video_layout_state->base_path, sizeof(respath));
      FUNC6(respath, path, sizeof(respath));

      if (!FUNC1(respath, &buf, NULL, &len))
      {
         FUNC0("video_layout: failed to decompress image: %s\n", respath);
         return 0;
      }

      if (!FUNC5(&image, FUNC3(path), buf, (size_t)len))
      {
         FUNC2(buf);

         FUNC0("video_layout: failed to load image: %s\n", respath);
         return 0;
      }

      FUNC2(buf);
   }
   else
   {
      char respath[PATH_MAX_LENGTH];
      FUNC7(respath, video_layout_state->base_path, sizeof(respath));
      FUNC6(respath, path, sizeof(respath));

      if (!FUNC4(&image, respath))
      {
         FUNC0("video_layout: failed to load image: %s\n", respath);
         return 0;
      }
   }

   handle = video_layout_state->render->take_image(
      video_layout_state->render_info.video_driver_data, image);

   if (!handle)
      return 0;

   index = video_layout_state->images_count;

   FUNC9((void**)&video_layout_state->images, sizeof(void*), ++video_layout_state->images_count);

   video_layout_state->images[index] = handle;

   return index;
}