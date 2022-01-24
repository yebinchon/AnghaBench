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
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  char* png_bytep ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 char* no_profile ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 size_t FUNC12 (char const*) ; 
 char* FUNC13 (char const*,char) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC14(const char *filename)
{
   int result = 0;
   FILE *fp = FUNC3(filename, "rb");

   if (fp != NULL)
   {
      png_uint_32 proflen = 0;
      png_bytep profile = FUNC0(fp, &proflen);

      if (profile != NULL && profile != no_profile)
      {
         size_t len;
         char *output;

         {
            const char *ep = FUNC13(filename, '.');

            if (ep != NULL)
               len = ep-filename;

            else
               len = FUNC12(filename);
         }

         output = FUNC7(len + 5);
         if (output != NULL)
         {
            FILE *of;

            FUNC8(output, filename, len);
            FUNC11(output+len, ".icc");

            of = FUNC3(output, "wb");
            if (of != NULL)
            {
               if (FUNC6(profile, proflen, 1, of) == 1 &&
                  FUNC2(of) == 0 &&
                  FUNC1(of) == 0)
               {
                  if (verbose)
                     FUNC9("%s -> %s\n", filename, output);
                  /* Success return */
                  result = 1;
               }

               else
               {
                  FUNC4(stderr, "%s: error writing profile\n", output);
                  if (FUNC10(output))
                     FUNC4(stderr, "%s: could not remove file\n", output);
               }
            }

            else
               FUNC4(stderr, "%s: failed to open output file\n", output);

            FUNC5(output);
         }

         else
            FUNC4(stderr, "%s: OOM allocating string!\n", filename);

         FUNC5(profile);
      }

      else if (verbose && profile == no_profile)
	FUNC9("%s has no profile\n", filename);
   }

   else
      FUNC4(stderr, "%s: could not open file\n", filename);

   return result;
}