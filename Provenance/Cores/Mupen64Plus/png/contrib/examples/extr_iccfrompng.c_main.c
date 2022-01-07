
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ extract_one_file (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ verbose ;

int
main(int argc, char **argv)
{
   int i;
   int extracted = 0;

   for (i=1; i<argc; ++i)
   {
      if (strcmp(argv[i], "-q") == 0)
         verbose = 0;

      else if (extract_one_file(argv[i]))
         extracted = 1;
   }


   return extracted == 0;
}
