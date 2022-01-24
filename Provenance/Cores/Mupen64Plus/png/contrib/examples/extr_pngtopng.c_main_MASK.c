#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* message; int /*<<< orphan*/  format; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ png_image ;
typedef  int /*<<< orphan*/ * png_bytep ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_FORMAT_RGBA ; 
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  PNG_IMAGE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, const char **argv)
{
   int result = 1;

   if (argc == 3)
   {
      png_image image;

      /* Only the image structure version number needs to be set. */
      FUNC4(&image, 0, sizeof image);
      image.version = PNG_IMAGE_VERSION;

      if (FUNC5(&image, argv[1]))
      {
         png_bytep buffer;

         /* Change this to try different formats!  If you set a colormap format
          * then you must also supply a colormap below.
          */
         image.format = PNG_FORMAT_RGBA;

         buffer = FUNC3(FUNC0(image));

         if (buffer != NULL)
         {
            if (FUNC6(&image, NULL/*background*/, buffer,
               0/*row_stride*/, NULL/*colormap for PNG_FORMAT_FLAG_COLORMAP */))
            {
               if (FUNC8(&image, argv[2],
                  0/*convert_to_8bit*/, buffer, 0/*row_stride*/,
                  NULL/*colormap*/))
                  result = 0;

               else
                  FUNC1(stderr, "pngtopng: write %s: %s\n", argv[2],
                      image.message);

               FUNC2(buffer);
            }

            else
            {
               FUNC1(stderr, "pngtopng: read %s: %s\n", argv[1],
                   image.message);

               /* This is the only place where a 'free' is required; libpng does
                * the cleanup on error and success, but in this case we couldn't
                * complete the read because of running out of memory.
                */
               FUNC7(&image);
            }
         }

         else
            FUNC1(stderr, "pngtopng: out of memory: %lu bytes\n",
               (unsigned long)FUNC0(image));
      }

      else
         /* Failed to read the first argument: */
         FUNC1(stderr, "pngtopng: %s: %s\n", argv[1], image.message);
   }

   else
      /* Wrong number of arguments */
      FUNC1(stderr, "pngtopng: usage: pngtopng input-file output-file\n");

   return result;
}