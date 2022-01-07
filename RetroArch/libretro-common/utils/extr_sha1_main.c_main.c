
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SHA1Context {int* Message_Digest; } ;
typedef int FILE ;


 int SHA1Input (struct SHA1Context*,char*,int) ;
 int SHA1Reset (struct SHA1Context*) ;
 int SHA1Result (struct SHA1Context*) ;
 int _O_BINARY ;
 int fclose (int *) ;
 int feof (int *) ;
 char fgetc (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,int,int,int,int,int,char*) ;
 int setmode (int ,int ) ;
 int stderr ;
 int * stdin ;
 scalar_t__ string_is_equal (char*,char*) ;
 int usage () ;

int main(int argc, char *argv[])
{
   struct SHA1Context sha;
   FILE *fp;
   char c;
   int i;
   int reading_stdin;
   int read_stdin = 0;





   if (argc > 1 && (string_is_equal(argv[1],"-?") ||
            string_is_equal(argv[1],"--help")))
   {
      usage();
      return 1;
   }





   for(i = 0; i < argc; i++)
   {





      if (i == 0)
         i++;

      if (argc == 1 || string_is_equal(argv[i],"-"))
      {



         fp = stdin;
         reading_stdin = 1;
      }
      else
      {
         if (!(fp = fopen(argv[i],"rb")))
         {
            fprintf(stderr,
                  "sha: unable to open file %s\n",
                  argv[i]);
            return 2;
         }
         reading_stdin = 0;
      }




      if (reading_stdin)
      {
         if (read_stdin)
            continue;

         read_stdin = 1;
      }




      SHA1Reset(&sha);

      c = fgetc(fp);
      while(!feof(fp))
      {
         SHA1Input(&sha, &c, 1);
         c = fgetc(fp);
      }

      if (!reading_stdin)
         fclose(fp);

      if (!SHA1Result(&sha))
      {
         fprintf(stderr,
               "sha: could not compute message digest for %s\n",
               reading_stdin?"STDIN":argv[i]);
      }
      else
      {
         printf( "%08X %08X %08X %08X %08X - %s\n",
               sha.Message_Digest[0],
               sha.Message_Digest[1],
               sha.Message_Digest[2],
               sha.Message_Digest[3],
               sha.Message_Digest[4],
               reading_stdin?"STDIN":argv[i]);
      }
   }

   return 0;
}
