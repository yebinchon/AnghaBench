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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct texture_image {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixels; } ;
typedef  enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;

/* Variables and functions */
 int IMAGE_PROCESS_ERROR ; 
 int IMAGE_PROCESS_ERROR_END ; 
 int IMAGE_PROCESS_NEXT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned int,struct texture_image*) ; 
 int /*<<< orphan*/  FUNC1 (struct texture_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct texture_image*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 scalar_t__ FUNC5 (void*,int) ; 
 void* FUNC6 (int) ; 
 int FUNC7 (void*,int,int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 

__attribute__((used)) static bool FUNC10(
      enum image_type_enum type,
      void *ptr,
      size_t len,
      struct texture_image *out_img,
      unsigned a_shift, unsigned r_shift,
      unsigned g_shift, unsigned b_shift)
{
   int ret;
   bool success = false;
   void *img    = FUNC6(type);

   if (!img)
      goto end;

   FUNC8(img, type, (uint8_t*)ptr, len);

   if (!FUNC9(img, type))
      goto end;

   while (FUNC5(img, type));

   if (!FUNC4(img, type))
      goto end;

   do
   {
      ret = FUNC7(img, type,
            (uint32_t**)&out_img->pixels, len, &out_img->width,
            &out_img->height);
   }while(ret == IMAGE_PROCESS_NEXT);

   if (ret == IMAGE_PROCESS_ERROR || ret == IMAGE_PROCESS_ERROR_END)
      goto end;

   FUNC0(r_shift, g_shift, b_shift,
         a_shift, out_img);

#ifdef GEKKO
   if (!image_texture_internal_gx_convert_texture32(out_img))
   {
      image_texture_free(out_img);
      goto end;
   }
#endif

   success = true;

end:
   if (img)
      FUNC3(img, type);

   return success;
}