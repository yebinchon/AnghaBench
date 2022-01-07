
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef char* png_bytep ;
typedef int FILE ;


 char* extract (int *,int *) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fflush (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 int fwrite (char*,int ,int,int *) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* no_profile ;
 int printf (char*,char const*,...) ;
 scalar_t__ remove (char*) ;
 int stderr ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
extract_one_file(const char *filename)
{
   int result = 0;
   FILE *fp = fopen(filename, "rb");

   if (fp != ((void*)0))
   {
      png_uint_32 proflen = 0;
      png_bytep profile = extract(fp, &proflen);

      if (profile != ((void*)0) && profile != no_profile)
      {
         size_t len;
         char *output;

         {
            const char *ep = strrchr(filename, '.');

            if (ep != ((void*)0))
               len = ep-filename;

            else
               len = strlen(filename);
         }

         output = malloc(len + 5);
         if (output != ((void*)0))
         {
            FILE *of;

            memcpy(output, filename, len);
            strcpy(output+len, ".icc");

            of = fopen(output, "wb");
            if (of != ((void*)0))
            {
               if (fwrite(profile, proflen, 1, of) == 1 &&
                  fflush(of) == 0 &&
                  fclose(of) == 0)
               {
                  if (verbose)
                     printf("%s -> %s\n", filename, output);

                  result = 1;
               }

               else
               {
                  fprintf(stderr, "%s: error writing profile\n", output);
                  if (remove(output))
                     fprintf(stderr, "%s: could not remove file\n", output);
               }
            }

            else
               fprintf(stderr, "%s: failed to open output file\n", output);

            free(output);
         }

         else
            fprintf(stderr, "%s: OOM allocating string!\n", filename);

         free(profile);
      }

      else if (verbose && profile == no_profile)
 printf("%s has no profile\n", filename);
   }

   else
      fprintf(stderr, "%s: could not open file\n", filename);

   return result;
}
