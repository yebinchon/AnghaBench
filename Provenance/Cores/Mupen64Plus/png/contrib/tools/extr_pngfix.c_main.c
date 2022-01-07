
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global {int errors; int warnings; int quiet; int verbose; int idat_max; scalar_t__ skip; int optimize_zlib; int status_code; } ;
typedef int png_uint_32 ;


 int FILENAME_MAX ;
 scalar_t__ SKIP_ALL ;
 scalar_t__ SKIP_BAD_CRC ;
 scalar_t__ SKIP_COLOR ;
 scalar_t__ SKIP_NONE ;
 scalar_t__ SKIP_TRANSFORM ;
 scalar_t__ SKIP_UNSAFE ;
 scalar_t__ SKIP_UNUSED ;
 int WRITE_ERROR ;
 scalar_t__ atol (char const*) ;
 int fprintf (int ,char*,char const*,char const*,char const*,...) ;
 int global_end (struct global*) ;
 int global_init (struct global*) ;
 int memcpy (char*,char const*,size_t) ;
 int one_file (struct global*,char const*,char const*) ;
 int set_option ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int usage (char const*) ;

int
main(int argc, const char **argv)
{
   char temp_name[FILENAME_MAX+1];
   const char * prog = *argv;
   const char * outfile = ((void*)0);
   const char * suffix = ((void*)0);
   const char * prefix = ((void*)0);
   int done = 0;
   struct global global;

   global_init(&global);

   while (--argc > 0)
   {
      ++argv;

      if (strcmp(*argv, "--debug") == 0)
      {

         global.errors = global.warnings = 1;
         global.quiet = 0;
         global.verbose = 7;
      }

      else if (strncmp(*argv, "--max=", 6) == 0)
      {
         global.idat_max = (png_uint_32)atol(6+*argv);

         if (global.skip < SKIP_UNSAFE)
            global.skip = SKIP_UNSAFE;
      }

      else if (strcmp(*argv, "--max") == 0)
      {
         global.idat_max = 0x7fffffff;

         if (global.skip < SKIP_UNSAFE)
            global.skip = SKIP_UNSAFE;
      }

      else if (strcmp(*argv, "--optimize") == 0 || strcmp(*argv, "-o") == 0)
         global.optimize_zlib = 1;

      else if (strncmp(*argv, "--out=", 6) == 0)
         outfile = 6+*argv;

      else if (strncmp(*argv, "--suffix=", 9) == 0)
         suffix = 9+*argv;

      else if (strncmp(*argv, "--prefix=", 9) == 0)
         prefix = 9+*argv;

      else if (strcmp(*argv, "--strip=none") == 0)
         global.skip = SKIP_NONE;

      else if (strcmp(*argv, "--strip=crc") == 0)
         global.skip = SKIP_BAD_CRC;

      else if (strcmp(*argv, "--strip=unsafe") == 0)
         global.skip = SKIP_UNSAFE;

      else if (strcmp(*argv, "--strip=unused") == 0)
         global.skip = SKIP_UNUSED;

      else if (strcmp(*argv, "--strip=transform") == 0)
         global.skip = SKIP_TRANSFORM;

      else if (strcmp(*argv, "--strip=color") == 0)
         global.skip = SKIP_COLOR;

      else if (strcmp(*argv, "--strip=all") == 0)
         global.skip = SKIP_ALL;

      else if (strcmp(*argv, "--errors") == 0 || strcmp(*argv, "-e") == 0)
         global.errors = 1;

      else if (strcmp(*argv, "--warnings") == 0 || strcmp(*argv, "-w") == 0)
         global.warnings = 1;

      else if (strcmp(*argv, "--quiet") == 0 || strcmp(*argv, "-q") == 0)
      {
         if (global.quiet)
            global.quiet = 2;

         else
            global.quiet = 1;
      }

      else if (strcmp(*argv, "--verbose") == 0 || strcmp(*argv, "-v") == 0)
         ++global.verbose;
      else if ((*argv)[0] == '-')
         usage(prog);

      else
      {
         size_t outlen = strlen(*argv);

         if (outfile == ((void*)0))
         {

            if (prefix != ((void*)0))
            {
               size_t prefixlen = strlen(prefix);

               if (prefixlen+outlen > FILENAME_MAX)
               {
                  fprintf(stderr, "%s: output file name too long: %s%s%s\n",
                     prog, prefix, *argv, suffix ? suffix : "");
                  global.status_code |= WRITE_ERROR;
                  continue;
               }

               memcpy(temp_name, prefix, prefixlen);
               memcpy(temp_name+prefixlen, *argv, outlen);
               outlen += prefixlen;
               outfile = temp_name;
            }

            else if (suffix != ((void*)0))
               memcpy(temp_name, *argv, outlen);

            temp_name[outlen] = 0;

            if (suffix != ((void*)0))
            {
               size_t suffixlen = strlen(suffix);

               if (outlen+suffixlen > FILENAME_MAX)
               {
                  fprintf(stderr, "%s: output file name too long: %s%s\n",
                     prog, *argv, suffix);
                  global.status_code |= WRITE_ERROR;
                  continue;
               }

               memcpy(temp_name+outlen, suffix, suffixlen);
               outlen += suffixlen;
               temp_name[outlen] = 0;
               outfile = temp_name;
            }
         }

         (void)one_file(&global, *argv, outfile);
         ++done;
         outfile = ((void*)0);
      }
   }

   if (!done)
      usage(prog);

   return global_end(&global);
}
