#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sprite {char const* name; int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * file; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/ * png_uint_16p ;
struct TYPE_9__ {char* message; scalar_t__ colormap_entries; int /*<<< orphan*/  flags; void* format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * opaque; void* version; } ;
typedef  TYPE_1__ png_image ;

/* Variables and functions */
 void* PNG_FORMAT_LINEAR_RGB_ALPHA ; 
 int /*<<< orphan*/  PNG_IMAGE_FLAG_FAST ; 
 scalar_t__ FUNC0 (TYPE_1__) ; 
 void* PNG_IMAGE_VERSION ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sprite*,int,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*,char*,int*,int*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct sprite *sprite, int *argc, const char ***argv)
{
   /* Read the arguments and create this sprite. The sprite buffer has already
    * been allocated. This reads the input PNGs one by one in linear format,
    * composes them onto the sprite buffer (the code in the function above)
    * then saves the result, converting it on the fly to PNG RGBA 8-bit format.
    */
   while (*argc > 0)
   {
      char tombstone;
      int x = 0, y = 0;

      if ((*argv)[0][0] == '-' && (*argv)[0][1] == '-')
      {
         /* The only supported option is --at. */
         if (FUNC10((*argv)[0], "--at=%d,%d%c", &x, &y, &tombstone) != 2)
            break; /* success; caller will parse this option */

         ++*argv, --*argc;
      }

      else
      {
         /* The argument has to be a file name */
         png_image image;

         image.version = PNG_IMAGE_VERSION;
         image.opaque = NULL;

         if (FUNC5(&image, (*argv)[0]))
         {
            png_uint_16p buffer;

            image.format = PNG_FORMAT_LINEAR_RGB_ALPHA;

            buffer = FUNC3(FUNC0(image));

            if (buffer != NULL)
            {
               if (FUNC6(&image, NULL/*background*/, buffer,
                  0/*row_stride*/,
                  NULL/*colormap for PNG_FORMAT_FLAG_COLORMAP*/))
               {
                  /* This is the place where the Porter-Duff 'Over' operator
                   * needs to be done by this code.  In fact, any image
                   * processing required can be done here; the data is in
                   * the correct format (linear, 16-bit) and source and
                   * destination are in memory.
                   */
                  FUNC9(sprite, x, y, &image, buffer);
                  FUNC2(buffer);
                  ++*argv, --*argc;
                  /* And continue to the next argument */
                  continue;
               }

               else
               {
                  FUNC2(buffer);
                  FUNC1(stderr, "simpleover: read %s: %s\n", (*argv)[0],
                      image.message);
               }
            }

            else
            {
               FUNC1(stderr, "simpleover: out of memory: %lu bytes\n",
                  (unsigned long)FUNC0(image));

               /* png_image_free must be called if we abort the Simplified API
                * read because of a problem detected in this code.  If problems
                * are detected in the Simplified API it cleans up itself.
                */
               FUNC7(&image);
            }
         }

         else
         {
            /* Failed to read the first argument: */
            FUNC1(stderr, "simpleover: %s: %s\n", (*argv)[0], image.message);
         }

         return 0; /* failure */
      }
   }

   /* All the sprite operations have completed successfully. Save the RGBA
    * buffer as a PNG using the simplified write API.
    */
   sprite->file = FUNC12();

   if (sprite->file != NULL)
   {
      png_image save;

      FUNC4(&save, 0, sizeof save);
      save.version = PNG_IMAGE_VERSION;
      save.opaque = NULL;
      save.width = sprite->width;
      save.height = sprite->height;
      save.format = PNG_FORMAT_LINEAR_RGB_ALPHA;
      save.flags = PNG_IMAGE_FLAG_FAST;
      save.colormap_entries = 0;

      if (FUNC8(&save, sprite->file, 1/*convert_to_8_bit*/,
          sprite->buffer, 0/*row_stride*/, NULL/*colormap*/))
      {
         /* Success; the buffer is no longer needed: */
         FUNC2(sprite->buffer);
         sprite->buffer = NULL;
         return 1; /* ok */
      }

      else
         FUNC1(stderr, "simpleover: write sprite %s: %s\n", sprite->name,
            save.message);
   }

   else
      FUNC1(stderr, "simpleover: sprite %s: could not allocate tmpfile: %s\n",
         sprite->name, FUNC11(errno));

   return 0; /* fail */
}