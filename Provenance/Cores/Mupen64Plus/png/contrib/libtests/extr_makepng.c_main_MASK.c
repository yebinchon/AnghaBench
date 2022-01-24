#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_fixed_point ;
typedef  char* png_const_charp ;
typedef  char* png_charp ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ chunk_insert ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  COPYRIGHT 129 
#define  IMAGE_LICENSING 128 
 unsigned int PNG_ALL_FILTERS ; 
 int PNG_COLOR_MASK_COLOR ; 
 int PNG_COLOR_MASK_PALETTE ; 
 int PNG_COLOR_TYPE_GRAY ; 
 int PNG_COLOR_TYPE_GRAY_ALPHA ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int PNG_COLOR_TYPE_RGB ; 
 int PNG_COLOR_TYPE_RGB_ALPHA ; 
 int /*<<< orphan*/  PNG_DEFAULT_sRGB ; 
 unsigned int PNG_FILTER_AVG ; 
 unsigned int PNG_FILTER_NONE ; 
 unsigned int PNG_FILTER_PAETH ; 
 unsigned int PNG_FILTER_SUB ; 
 int /*<<< orphan*/  PNG_FP_1 ; 
 int /*<<< orphan*/  PNG_GAMMA_MAC_18 ; 
 TYPE_1__* FUNC0 (char*,char*,int /*<<< orphan*/ *,char**) ; 
 TYPE_1__* FUNC1 (char*,char**) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int FUNC14 (char const**,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_1__*,unsigned int,unsigned int*,int,int) ; 

int
FUNC15(int argc, char **argv)
{
   FILE *fp = stdout;
   const char *file_name = NULL;
   int color_type = 8; /* invalid */
   int bit_depth = 32; /* invalid */
   int small = 0; /* make full size images */
   int tRNS = 0; /* don't output a tRNS chunk */
   unsigned int colors[5];
   unsigned int filters = PNG_ALL_FILTERS;
   png_fixed_point gamma = 0; /* not set */
   chunk_insert *head_insert = NULL;
   chunk_insert **insert_ptr = &head_insert;

   FUNC8(colors, 0, sizeof colors);

   while (--argc > 0)
   {
      char *arg = *++argv;

      if (FUNC11(arg, "--small") == 0)
      {
         small = 1;
         continue;
      }

      if (FUNC11(arg, "--tRNS") == 0)
      {
         tRNS = 1;
         continue;
      }

      if (FUNC11(arg, "--sRGB") == 0)
      {
         gamma = PNG_DEFAULT_sRGB;
         continue;
      }

      if (FUNC11(arg, "--linear") == 0)
      {
         gamma = PNG_FP_1;
         continue;
      }

      if (FUNC11(arg, "--1.8") == 0)
      {
         gamma = PNG_GAMMA_MAC_18;
         continue;
      }

      if (FUNC11(arg, "--nofilters") == 0)
      {
         filters = PNG_FILTER_NONE;
         continue;
      }

      if (FUNC13(arg, "--color=", 8) == 0)
      {
          FUNC9(arg+8, colors);
          continue;
      }

      if (argc >= 3 && FUNC11(arg, "--insert") == 0)
      {
         png_const_charp what = *++argv;
         png_charp param = *++argv;
         chunk_insert *new_insert;

         argc -= 2;

         new_insert = FUNC4(what, param);

         if (new_insert != NULL)
         {
            *insert_ptr = new_insert;
            insert_ptr = &new_insert->next;
         }

         continue;
      }

      if (arg[0] == '-')
      {
         FUNC6(stderr, "makepng: %s: invalid option\n", arg);
         FUNC3(1);
      }

      if (FUNC11(arg, "palette") == 0)
      {
         color_type = PNG_COLOR_TYPE_PALETTE;
         continue;
      }

      if (FUNC13(arg, "gray", 4) == 0)
      {
         if (arg[4] == 0)
         {
            color_type = PNG_COLOR_TYPE_GRAY;
            continue;
         }

         else if (FUNC11(arg+4, "a") == 0 ||
            FUNC11(arg+4, "alpha") == 0 ||
            FUNC11(arg+4, "-alpha") == 0)
         {
            color_type = PNG_COLOR_TYPE_GRAY_ALPHA;
            continue;
         }
      }

      if (FUNC13(arg, "rgb", 3) == 0)
      {
         if (arg[3] == 0)
         {
            color_type = PNG_COLOR_TYPE_RGB;
            continue;
         }

         else if (FUNC11(arg+3, "a") == 0 ||
            FUNC11(arg+3, "alpha") == 0 ||
            FUNC11(arg+3, "-alpha") == 0)
         {
            color_type = PNG_COLOR_TYPE_RGB_ALPHA;
            continue;
         }
      }

      if (color_type == 8 && FUNC7(arg[0]))
      {
         color_type = FUNC2(arg);
         if (color_type < 0 || color_type > 6 || color_type == 1 ||
            color_type == 5)
         {
            FUNC6(stderr, "makepng: %s: not a valid color type\n", arg);
            FUNC3(1);
         }

         continue;
      }

      if (bit_depth == 32 && FUNC7(arg[0]))
      {
         bit_depth = FUNC2(arg);
         if (bit_depth <= 0 || bit_depth > 16 ||
            (bit_depth & -bit_depth) != bit_depth)
         {
            FUNC6(stderr, "makepng: %s: not a valid bit depth\n", arg);
            FUNC3(1);
         }

         continue;
      }

      if (argc == 1) /* It's the file name */
      {
         fp = FUNC5(arg, "wb");
         if (fp == NULL)
         {
            FUNC6(stderr, "%s: %s: could not open\n", arg, FUNC12(errno));
            FUNC3(1);
         }

         file_name = arg;
         continue;
      }

      FUNC6(stderr, "makepng: %s: unknown argument\n", arg);
      FUNC3(1);
   } /* argument while loop */

   if (color_type == 8 || bit_depth == 32)
   {
      FUNC6(stderr, "usage: makepng [--small] [--sRGB|--linear|--1.8] "
         "[--color=...] color-type bit-depth [file-name]\n"
         "  Make a test PNG file, by default writes to stdout.\n"
         "  Other options are available, UTSL.\n");
      FUNC3(1);
   }

   /* Check the colors */
   {
      const unsigned int lim = (color_type == PNG_COLOR_TYPE_PALETTE ? 255U :
         (1U<<bit_depth)-1);
      unsigned int i;

      for (i=1; i<=colors[0]; ++i)
         if (colors[i] > lim)
         {
            FUNC6(stderr, "makepng: --color=...: %u out of range [0..%u]\n",
               colors[i], lim);
            FUNC3(1);
         }
   }

   /* small and colors are incomparible (will probably crash if both are used at
    * the same time!)
    */
   if (small && colors[0] != 0)
   {
      FUNC6(stderr, "makepng: --color --small: only one at a time!\n");
      FUNC3(1);
   }

   /* Restrict the filters for more speed to those we know are used for the
    * generated images.
    */
   if (filters == PNG_ALL_FILTERS && !small/*small provides defaults*/)
   {
      if ((color_type & PNG_COLOR_MASK_PALETTE) != 0 || bit_depth < 8)
         filters = PNG_FILTER_NONE;

      else if (color_type & PNG_COLOR_MASK_COLOR) /* rgb */
      {
         if (bit_depth == 8)
            filters &= ~(PNG_FILTER_NONE | PNG_FILTER_AVG);

         else
            filters = PNG_FILTER_SUB | PNG_FILTER_PAETH;
      }

      else /* gray 8 or 16-bit */
         filters &= ~PNG_FILTER_NONE;
   }

   /* Insert standard copyright and licence text. */
   {
      static png_const_charp copyright[] =
      {
         COPYRIGHT, /* ISO-Latin-1 */
         NULL
      };
      static png_const_charp licensing[] =
      {
         IMAGE_LICENSING, /* UTF-8 */
         NULL
      };

      chunk_insert *new_insert;

      new_insert = FUNC1("Copyright", copyright);
      if (new_insert != NULL)
      {
         *insert_ptr = new_insert;
         insert_ptr = &new_insert->next;
      }

      new_insert = FUNC0("Licensing", "en", NULL, licensing);
      if (new_insert != NULL)
      {
         *insert_ptr = new_insert;
         insert_ptr = &new_insert->next;
      }
   }

   {
      int ret = FUNC14(&file_name, fp, color_type, bit_depth, gamma,
         head_insert, filters, colors, small, tRNS);

      if (ret != 0 && file_name != NULL)
         FUNC10(file_name);

      return ret;
   }
}