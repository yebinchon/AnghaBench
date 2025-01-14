
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNT ;
 int atoi (char*) ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int validation_ascii_to_fp (int,int,char**) ;
 int validation_checkfp (int,int,char**) ;
 int validation_gamma (int,char**) ;
 int validation_muldiv (int,int,char**) ;
 int verbose ;

int main(int argc, char **argv)
{
   int count = COUNT;

   while (argc > 1)
   {
      if (argc > 2 && strcmp(argv[1], "-c") == 0)
      {
         count = atoi(argv[2]);
         argc -= 2;
         argv += 2;
      }

      else if (strcmp(argv[1], "-v") == 0)
      {
         ++verbose;
         --argc;
         ++argv;
      }

      else
         break;
   }

   if (count > 0 && argc > 1)
   {
      if (strcmp(argv[1], "ascii") == 0)
         return validation_ascii_to_fp(count, argc-1, argv+1);
      else if (strcmp(argv[1], "checkfp") == 0)
         return validation_checkfp(count, argc-1, argv+1);
      else if (strcmp(argv[1], "muldiv") == 0)
         return validation_muldiv(count, argc-1, argv+1);
      else if (strcmp(argv[1], "gamma") == 0)
         return validation_gamma(argc-1, argv+1);
   }


   fprintf(stderr,
      "usage: tarith [-v] [-c count] {ascii,muldiv,gamma} [args]\n");
   fprintf(stderr, " arguments: ascii [-a (all results)] [-e error%%]\n");
   fprintf(stderr, "            checkfp [-l max-number-chars]\n");
   fprintf(stderr, "            muldiv\n");
   fprintf(stderr, "            gamma -s (silent) -g (only gamma; no log)\n");
   return 1;
}
