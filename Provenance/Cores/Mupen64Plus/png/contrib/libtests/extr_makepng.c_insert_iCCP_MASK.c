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
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int png_size_t ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  int** png_charpp ;
typedef  scalar_t__* png_bytep ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_COMPRESSION_TYPE_BASE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int FUNC4 (int*,scalar_t__**) ; 
 int FUNC5 (int*,scalar_t__**) ; 
 int FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC9(png_structp png_ptr, png_infop info_ptr, int nparams,
   png_charpp params)
{
   png_bytep profile = NULL;
   png_uint_32 proflen = 0;
   int result;

   FUNC0(nparams, 2);

   switch (params[1][0])
   {
      case '<':
         {
            png_size_t filelen = FUNC5(params[1]+1, &profile);
            if (filelen > 0xfffffffc) /* Maximum profile length */
            {
               FUNC2(stderr, "%s: file too long (%lu) for an ICC profile\n",
                  params[1]+1, (unsigned long)filelen);
               FUNC1(1);
            }

            proflen = (png_uint_32)filelen;
         }
         break;

      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9':
         {
            png_size_t fake_len = FUNC4(params[1], &profile);

            if (fake_len > 0) /* else a simple parameter */
            {
               if (fake_len > 0xffffffff) /* Maximum profile length */
               {
                  FUNC2(stderr,
                     "%s: fake data too long (%lu) for an ICC profile\n",
                     params[1], (unsigned long)fake_len);
                  FUNC1(1);
               }
               proflen = (png_uint_32)(fake_len & ~3U);
               /* Always fix up the profile length. */
               FUNC7(profile, proflen);
               break;
            }
         }

      default:
         FUNC2(stderr, "--insert iCCP \"%s\": unrecognized\n", params[1]);
         FUNC2(stderr, "  use '<' to read a file: \"<filename\"\n");
         FUNC1(1);
   }

   result = 1;

   if (proflen & 3)
   {
      FUNC2(stderr,
         "makepng: --insert iCCP %s: profile length made a multiple of 4\n",
         params[1]);

      /* load_file allocates extra space for this padding, the ICC spec requires
       * padding with zero bytes.
       */
      while (proflen & 3)
         profile[proflen++] = 0;
   }

   if (profile != NULL && proflen > 3)
   {
      png_uint_32 prof_header = FUNC6(profile);

      if (prof_header != proflen)
      {
         FUNC2(stderr, "--insert iCCP %s: profile length field wrong:\n",
            params[1]);
         FUNC2(stderr, "  actual %lu, recorded value %lu (corrected)\n",
            (unsigned long)proflen, (unsigned long)prof_header);
         FUNC7(profile, proflen);
      }
   }

   if (result && profile != NULL && proflen >=4)
      FUNC8(png_ptr, info_ptr, params[0], PNG_COMPRESSION_TYPE_BASE,
         profile, proflen);

   if (profile)
      FUNC3(profile);

   if (!result)
      FUNC1(1);
}