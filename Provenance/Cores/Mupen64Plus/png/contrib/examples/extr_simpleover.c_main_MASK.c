#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* message; int /*<<< orphan*/  format; int /*<<< orphan*/ * opaque; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ png_image ;
struct TYPE_12__ {int member_1; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ png_color ;
typedef  int /*<<< orphan*/ * png_bytep ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_FORMAT_RGB ; 
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  PNG_IMAGE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC10(int argc, const char **argv)
{
   int result = 1; /* default to fail */

   if (argc >= 2)
   {
      int argi = 2;
      const char *output = NULL;
      png_image image;

      if (argc > 2 && argv[2][0] != '-'/*an operation*/)
      {
         output = argv[2];
         argi = 3;
      }

      image.version = PNG_IMAGE_VERSION;
      image.opaque = NULL;

      if (FUNC4(&image, argv[1]))
      {
         png_bytep buffer;

         image.format = PNG_FORMAT_RGB; /* 24-bit RGB */

         buffer = FUNC3(FUNC0(image));

         if (buffer != NULL)
         {
            png_color background = {0, 0xff, 0}; /* fully saturated green */

            if (FUNC5(&image, &background, buffer,
               0/*row_stride*/, NULL/*colormap for PNG_FORMAT_FLAG_COLORMAP */))
            {
               /* At this point png_image_finish_read has cleaned up the
                * allocated data in png_image, and only the buffer needs to be
                * freed.
                *
                * Perform the remaining operations:
                */
               if (FUNC9(&image, buffer, argc-argi, argv+argi))
               {
                  /* Write the output: */
                  if ((output != NULL &&
                       FUNC7(&image, output,
                        0/*convert_to_8bit*/, buffer, 0/*row_stride*/,
                        NULL/*colormap*/)) ||
                      (output == NULL &&
                       FUNC8(&image, stdout,
                        0/*convert_to_8bit*/, buffer, 0/*row_stride*/,
                        NULL/*colormap*/)))
                     result = 0;

                  else
                     FUNC1(stderr, "simpleover: write %s: %s\n",
                        output == NULL ? "stdout" : output, image.message);
               }

               /* else simpleover_process writes an error message */
            }

            else
               FUNC1(stderr, "simpleover: read %s: %s\n", argv[1],
                   image.message);

            FUNC2(buffer);
         }

         else
         {
            FUNC1(stderr, "simpleover: out of memory: %lu bytes\n",
               (unsigned long)FUNC0(image));

            /* This is the only place where a 'free' is required; libpng does
             * the cleanup on error and success, but in this case we couldn't
             * complete the read because of running out of memory.
             */
            FUNC6(&image);
         }
      }

      else
      {
         /* Failed to read the first argument: */
         FUNC1(stderr, "simpleover: %s: %s\n", argv[1], image.message);
      }
   }

   else
   {
      /* Usage message */
      FUNC1(stderr,
         "simpleover: usage: simpleover background.png [output.png]\n"
         "  Output 'background.png' as a 24-bit RGB PNG file in 'output.png'\n"
         "   or, if not given, stdout.  'background.png' will be composited\n"
         "   on fully saturated green.\n"
         "\n"
         "  Optionally, before output, process additional PNG files:\n"
         "\n"
         "   --sprite=width,height,name {[--at=x,y] {sprite.png}}\n"
         "    Produce a transparent sprite of size (width,height) and with\n"
         "     name 'name'.\n"
         "    For each sprite.png composite it using a Porter-Duff 'Over'\n"
         "     operation at offset (x,y) in the sprite (defaulting to (0,0)).\n"
         "     Input PNGs will be truncated to the area of the sprite.\n"
         "\n"
         "   --add='name' {x,y}\n"
         "    Optionally, before output, composite a sprite, 'name', which\n"
         "     must have been previously produced using --sprite, at each\n"
         "     offset (x,y) in the output image.  Each sprite must fit\n"
         "     completely within the output image.\n"
         "\n"
         "  PNG files are processed in the order they occur on the command\n"
         "  line and thus the first PNG processed appears as the bottommost\n"
         "  in the output image.\n");
   }

   return result;
}