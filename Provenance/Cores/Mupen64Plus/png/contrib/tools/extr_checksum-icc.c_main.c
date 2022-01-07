
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int read_one_file (int *,char*) ;
 int stderr ;
 int * stdin ;

int main(int argc, char **argv)
{
   int err = 0;

   printf("/* adler32, crc32, MD5[16], intent, date, length, file-name */\n");

   if (argc > 1)
   {
      int i;

      for (i=1; i<argc; ++i)
      {
         FILE *ip = fopen(argv[i], "rb");

         if (ip == ((void*)0) || !read_one_file(ip, argv[i]))
         {
            err = 1;
            perror(argv[i]);
            fprintf(stderr, "%s: read error\n", argv[i]);
            printf("/* ERROR: %s */\n", argv[i]);
         }

         (void)fclose(ip);
      }
   }

   else
   {
      if (!read_one_file(stdin, "-"))
      {
         err = 1;
         perror("stdin");
         fprintf(stderr, "stdin: read error\n");
         printf("/* ERROR: stdin */\n");
      }
   }

   return err;
}
