
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Log_print (char*) ;
 int PBI_XLD_enabled ;
 int PBI_XLD_v_enabled ;
 int TRUE ;
 int init_xld_d () ;
 int init_xld_v () ;
 scalar_t__ strcmp (char*,char*) ;
 int xld_d_enabled ;

int PBI_XLD_Initialise(int *argc, char *argv[])
{
 int i, j;
 for (i = j = 1; i < *argc; i++) {
  if (strcmp(argv[i], "-1400") == 0) {
   PBI_XLD_v_enabled = TRUE;
   PBI_XLD_enabled = TRUE;
  }else if (strcmp(argv[i], "-xld") == 0){
   PBI_XLD_v_enabled = TRUE;
   xld_d_enabled = TRUE;
   PBI_XLD_enabled = TRUE;
  }
  else {
    if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-1400            Emulate the Atari 1400XL");
    Log_print("\t-xld             Emulate the Atari 1450XLD");
   }

   argv[j++] = argv[i];
  }

 }
 *argc = j;

 if (PBI_XLD_v_enabled) {
  init_xld_v();
 }





 if (xld_d_enabled) {
  init_xld_d();
 }

 return TRUE;
}
