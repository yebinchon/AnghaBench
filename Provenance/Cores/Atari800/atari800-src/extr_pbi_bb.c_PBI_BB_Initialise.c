
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Log_print (char*) ;
 int TRUE ;
 int init_bb () ;
 scalar_t__ strcmp (char*,char*) ;

int PBI_BB_Initialise(int *argc, char *argv[])
{
 int i, j;
 for (i = j = 1; i < *argc; i++) {
  if (strcmp(argv[i], "-bb") == 0) {
   init_bb();
  }
  else {
    if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-bb              Emulate the CSS Black Box");
   }
   argv[j++] = argv[i];
  }
 }
 *argc = j;

 return TRUE;
}
