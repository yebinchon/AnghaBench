#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct arg {int dummy; } ;
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/ * png_uint_16p ;
struct TYPE_5__ {scalar_t__ width; scalar_t__ height; char* message; scalar_t__ colormap_entries; scalar_t__ flags; int /*<<< orphan*/  format; int /*<<< orphan*/ * opaque; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ png_image ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_FORMAT_LINEAR_RGB_ALPHA ; 
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  PNG_IMAGE_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int max_shapes ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct arg*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct arg*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

int
FUNC10(int argc, const char **argv)
{
   int convert_to_8bit = 0;

   /* There is one option: --8bit: */
   if (argc > 1 && FUNC9(argv[1], "--8bit") == 0)
      --argc, ++argv, convert_to_8bit = 1;

   if (argc >= 3)
   {
      png_uint_16p buffer;
      int nshapes;
      png_image image;
#     define max_shapes 256
      struct arg arg_list[max_shapes];

      /* The libpng Simplified API write code requires a fully initialized
       * structure.
       */
      FUNC4(&image, 0, sizeof image);
      image.version = PNG_IMAGE_VERSION;
      image.opaque = NULL;
      image.width = FUNC8("width", argv[1]);
      image.height = FUNC8("height", argv[2]);
      image.format = PNG_FORMAT_LINEAR_RGB_ALPHA;
      image.flags = 0;
      image.colormap_entries = 0;

      /* Check the remainder of the arguments */
      for (nshapes=0; 3+7*(nshapes+1) <= argc && nshapes < max_shapes;
           ++nshapes)
         FUNC5(arg_list+nshapes, argv+3+7*nshapes);

      if (3+7*nshapes != argc)
      {
         FUNC1(stderr, "genpng: %s: too many arguments\n", argv[3+7*nshapes]);
         return 1;
      }

      /* Create the buffer: */
      buffer = FUNC3(FUNC0(image));

      if (buffer != NULL)
      {
         png_uint_32 y;

         /* Write each row... */
         for (y=0; y<image.height; ++y)
         {
            png_uint_32 x;

            /* Each pixel in each row: */
            for (x=0; x<image.width; ++x)
               FUNC6(buffer + 4*(x + y*image.width), arg_list, nshapes, x, y);
         }

         /* Write the result (to stdout) */
         if (FUNC7(&image, stdout, convert_to_8bit,
             buffer, 0/*row_stride*/, NULL/*colormap*/))
         {
            FUNC2(buffer);
            return 0; /* success */
         }

         else
            FUNC1(stderr, "genpng: write stdout: %s\n", image.message);

         FUNC2(buffer);
      }

      else
         FUNC1(stderr, "genpng: out of memory: %lu bytes\n",
               (unsigned long)FUNC0(image));
   }

   else
   {
      /* Wrong number of arguments */
      FUNC1(stderr, "genpng: usage: genpng [--8bit] width height {shape}\n"
         " Generate a transparent PNG in RGBA (truecolor+alpha) format\n"
         " containing the given shape or shapes.  Shapes are defined:\n"
         "\n"
         "  shape ::= color width shape x1 y1 x2 y2\n"
         "  color ::= black|white|red|green|yellow|blue\n"
         "  color ::= brown|purple|pink|orange|gray|cyan\n"
         "  width ::= filled|<number>\n"
         "  shape ::= circle|square|line\n"
         "  x1,x2 ::= <number>\n"
         "  y1,y2 ::= <number>\n"
         "\n"
         " Numbers are floating point numbers describing points relative to\n"
         " the top left of the output PNG as pixel coordinates.  The 'width'\n"
         " parameter is either the width of the line (in output pixels) used\n"
         " to draw the shape or 'filled' to indicate that the shape should\n"
         " be filled with the color.\n"
         "\n"
         " Colors are interpreted loosely to give access to the eight full\n"
         " intensity RGB values:\n"
         "\n"
         "  black, red, green, blue, yellow, cyan, purple, white,\n"
         "\n"
         " Cyan is full intensity blue+green; RGB(0,1,1), plus the following\n"
         " lower intensity values:\n"
         "\n"
         "  brown:  red+orange:  RGB(0.5, 0.125, 0) (dark red+orange)\n"
         "  pink:   red+white:   RGB(1.0, 0.5,   0.5)\n"
         "  orange: red+yellow:  RGB(1.0, 0.5,   0)\n"
         "  gray:   black+white: RGB(0.5, 0.5,   0.5)\n"
         "\n"
         " The RGB values are selected to make detection of aliasing errors\n"
         " easy. The names are selected to make the description of errors\n"
         " easy.\n"
         "\n"
         " The PNG is written to stdout, if --8bit is given a 32bpp RGBA sRGB\n"
         " file is produced, otherwise a 64bpp RGBA linear encoded file is\n"
         " written.\n");
   }

   return 1;
}