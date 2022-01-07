
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* png_const_charp ;
typedef scalar_t__** png_bytepp ;
typedef scalar_t__* png_bytep ;
typedef scalar_t__ png_byte ;
typedef int FILE ;


 int EOF ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (scalar_t__*) ;
 int getc (int *) ;
 scalar_t__* malloc (size_t) ;
 int perror (char*) ;
 int putc (int,int *) ;
 int rewind (int *) ;
 int stderr ;
 int * tmpfile () ;

__attribute__((used)) static size_t
load_file(png_const_charp name, png_bytepp result)
{
   FILE *fp = tmpfile();

   if (fp != ((void*)0))
   {
      FILE *ip = fopen(name, "rb");

      if (ip != ((void*)0))
      {
         size_t total = 0;
         int ch;

         for (;;)
         {
            ch = getc(ip);
            if (ch == EOF) break;
            putc(ch, fp);
            ++total;
         }

         if (ferror(ip))
         {
            perror(name);
            fprintf(stderr, "%s: read error\n", name);
            (void)fclose(ip);
         }

         else
         {
            (void)fclose(ip);

            if (ferror(fp))
            {
               perror("temporary file");
               fprintf(stderr, "temporary file write error\n");
            }

            else
            {
               rewind(fp);

               if (total > 0)
               {



                  png_bytep data = malloc((total+3)&~3);

                  if (data != ((void*)0))
                  {
                     size_t new_size = 0;

                     for (;;)
                     {
                        ch = getc(fp);
                        if (ch == EOF) break;
                        data[new_size++] = (png_byte)ch;
                     }

                     if (ferror(fp) || new_size != total)
                     {
                        perror("temporary file");
                        fprintf(stderr, "temporary file read error\n");
                        free(data);
                     }

                     else
                     {
                        (void)fclose(fp);
                        *result = data;
                        return total;
                     }
                  }

                  else
                     fprintf(stderr, "%s: out of memory loading file\n", name);
               }

               else
                  fprintf(stderr, "%s: empty file\n", name);
            }
         }
      }

      else
      {
         perror(name);
         fprintf(stderr, "%s: open failed\n", name);
      }

      fclose(fp);
   }

   else
      fprintf(stderr, "makepng: %s: could not open temporary file\n", name);

   exit(1);
   return 0;
}
