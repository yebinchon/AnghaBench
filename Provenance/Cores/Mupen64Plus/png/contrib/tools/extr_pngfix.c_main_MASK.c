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
struct global {int errors; int warnings; int quiet; int verbose; int idat_max; scalar_t__ skip; int optimize_zlib; int /*<<< orphan*/  status_code; } ;
typedef  int png_uint_32 ;

/* Variables and functions */
 int FILENAME_MAX ; 
 scalar_t__ SKIP_ALL ; 
 scalar_t__ SKIP_BAD_CRC ; 
 scalar_t__ SKIP_COLOR ; 
 scalar_t__ SKIP_NONE ; 
 scalar_t__ SKIP_TRANSFORM ; 
 scalar_t__ SKIP_UNSAFE ; 
 scalar_t__ SKIP_UNUSED ; 
 int /*<<< orphan*/  WRITE_ERROR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,...) ; 
 int FUNC2 (struct global*) ; 
 int /*<<< orphan*/  FUNC3 (struct global*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct global*,char const*,char const*) ; 
 int /*<<< orphan*/  set_option ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

int
FUNC10(int argc, const char **argv)
{
   char temp_name[FILENAME_MAX+1];
   const char *  prog = *argv;
   const char *  outfile = NULL;
   const char *  suffix = NULL;
   const char *  prefix = NULL;
   int           done = 0; /* if at least one file is processed */
   struct global global;

   FUNC3(&global);

   while (--argc > 0)
   {
      ++argv;

      if (FUNC6(*argv, "--debug") == 0)
      {
         /* To help debugging problems: */
         global.errors = global.warnings = 1;
         global.quiet = 0;
         global.verbose = 7;
      }

      else if (FUNC8(*argv, "--max=", 6) == 0)
      {
         global.idat_max = (png_uint_32)FUNC0(6+*argv);

         if (global.skip < SKIP_UNSAFE)
            global.skip = SKIP_UNSAFE;
      }

      else if (FUNC6(*argv, "--max") == 0)
      {
         global.idat_max = 0x7fffffff;

         if (global.skip < SKIP_UNSAFE)
            global.skip = SKIP_UNSAFE;
      }

      else if (FUNC6(*argv, "--optimize") == 0 || FUNC6(*argv, "-o") == 0)
         global.optimize_zlib = 1;

      else if (FUNC8(*argv, "--out=", 6) == 0)
         outfile = 6+*argv;

      else if (FUNC8(*argv, "--suffix=", 9) == 0)
         suffix = 9+*argv;

      else if (FUNC8(*argv, "--prefix=", 9) == 0)
         prefix = 9+*argv;

      else if (FUNC6(*argv, "--strip=none") == 0)
         global.skip = SKIP_NONE;

      else if (FUNC6(*argv, "--strip=crc") == 0)
         global.skip = SKIP_BAD_CRC;

      else if (FUNC6(*argv, "--strip=unsafe") == 0)
         global.skip = SKIP_UNSAFE;

      else if (FUNC6(*argv, "--strip=unused") == 0)
         global.skip = SKIP_UNUSED;

      else if (FUNC6(*argv, "--strip=transform") == 0)
         global.skip = SKIP_TRANSFORM;

      else if (FUNC6(*argv, "--strip=color") == 0)
         global.skip = SKIP_COLOR;

      else if (FUNC6(*argv, "--strip=all") == 0)
         global.skip = SKIP_ALL;

      else if (FUNC6(*argv, "--errors") == 0 || FUNC6(*argv, "-e") == 0)
         global.errors = 1;

      else if (FUNC6(*argv, "--warnings") == 0 || FUNC6(*argv, "-w") == 0)
         global.warnings = 1;

      else if (FUNC6(*argv, "--quiet") == 0 || FUNC6(*argv, "-q") == 0)
      {
         if (global.quiet)
            global.quiet = 2;

         else
            global.quiet = 1;
      }

      else if (FUNC6(*argv, "--verbose") == 0 || FUNC6(*argv, "-v") == 0)
         ++global.verbose;

#if 0
      /* NYI */
#     ifdef PNG_MAXIMUM_INFLATE_WINDOW
         else if (strcmp(*argv, "--test") == 0)
            ++set_option;
#     endif
#endif

      else if ((*argv)[0] == '-')
         FUNC9(prog);

      else
      {
         size_t outlen = FUNC7(*argv);

         if (outfile == NULL) /* else this takes precedence */
         {
            /* Consider the prefix/suffix options */
            if (prefix != NULL)
            {
               size_t prefixlen = FUNC7(prefix);

               if (prefixlen+outlen > FILENAME_MAX)
               {
                  FUNC1(stderr, "%s: output file name too long: %s%s%s\n",
                     prog, prefix, *argv, suffix ? suffix : "");
                  global.status_code |= WRITE_ERROR;
                  continue;
               }

               FUNC4(temp_name, prefix, prefixlen);
               FUNC4(temp_name+prefixlen, *argv, outlen);
               outlen += prefixlen;
               outfile = temp_name;
            }

            else if (suffix != NULL)
               FUNC4(temp_name, *argv, outlen);

            temp_name[outlen] = 0;

            if (suffix != NULL)
            {
               size_t suffixlen = FUNC7(suffix);

               if (outlen+suffixlen > FILENAME_MAX)
               {
                  FUNC1(stderr, "%s: output file name too long: %s%s\n",
                     prog, *argv, suffix);
                  global.status_code |= WRITE_ERROR;
                  continue;
               }

               FUNC4(temp_name+outlen, suffix, suffixlen);
               outlen += suffixlen;
               temp_name[outlen] = 0;
               outfile = temp_name;
            }
         }

         (void)FUNC5(&global, *argv, outfile);
         ++done;
         outfile = NULL;
      }
   }

   if (!done)
      FUNC9(prog);

   return FUNC2(&global);
}