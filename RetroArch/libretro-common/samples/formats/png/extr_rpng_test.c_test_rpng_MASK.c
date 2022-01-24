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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Imlib_Image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int* FUNC4 () ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int const*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int**,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int const*,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC10(const char *in_path)
{
#ifdef HAVE_IMLIB2
   Imlib_Image img;
   const uint32_t *imlib_data = NULL;
#endif
   const uint32_t test_data[] = {
      0xff000000 | 0x50, 0xff000000 | 0x80,
      0xff000000 | 0x40, 0xff000000 | 0x88,
      0xff000000 | 0x50, 0xff000000 | 0x80,
      0xff000000 | 0x40, 0xff000000 | 0x88,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
      0xff000000 | 0xc3, 0xff000000 | 0xd3,
   };
   uint32_t *data = NULL;
   unsigned width = 0;
   unsigned height = 0;

   if (!FUNC9("/tmp/test.png", test_data, 4, 4, 16))
      return 1;

   if (!FUNC8(in_path, &data, &width, &height))
      return 2;

   FUNC0(stderr, "Path: %s.\n", in_path);
   FUNC0(stderr, "Got image: %u x %u.\n", width, height);

#if 0
   fprintf(stderr, "\nRPNG:\n");
   for (unsigned h = 0; h < height; h++)
   {
      unsigned w;
      for (w = 0; w < width; w++)
         fprintf(stderr, "[%08x] ", data[h * width + w]);
      fprintf(stderr, "\n");
   }
#endif

#ifdef HAVE_IMLIB2
   /* Validate with imlib2 as well. */
   img = imlib_load_image(in_path);
   if (!img)
      return 4;

   imlib_context_set_image(img);

   width      = imlib_image_get_width();
   height     = imlib_image_get_width();
   imlib_data = imlib_image_get_data_for_reading_only();

#if 0
   fprintf(stderr, "\nImlib:\n");
   for (unsigned h = 0; h < height; h++)
   {
      for (unsigned w = 0; w < width; w++)
         fprintf(stderr, "[%08x] ", imlib_data[h * width + w]);
      fprintf(stderr, "\n");
   }
#endif

   if (memcmp(imlib_data, data, width * height * sizeof(uint32_t)) != 0)
   {
      fprintf(stderr, "Imlib and RPNG differs!\n");
      return 5;
   }
   else
      fprintf(stderr, "Imlib and RPNG are equivalent!\n");

   imlib_free_image();
#endif
   FUNC1(data);

   return 0;
}