
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* filename; scalar_t__ type; } ;


 scalar_t__ CARTRIDGE_LAST_SUPPORTED ;
 void* CARTRIDGE_NONE ;
 void* CARTRIDGE_UNKNOWN ;
 int CARTRIDGE_autoreboot ;
 TYPE_1__ CARTRIDGE_main ;
 TYPE_1__ CARTRIDGE_piggyback ;
 scalar_t__ CartIsPassthrough (scalar_t__) ;
 int FALSE ;
 int InitInsert (TYPE_1__*) ;
 int Log_print (char*,...) ;
 int TRUE ;
 int Util_sscansdec (char*,scalar_t__*) ;
 int Util_strlcpy (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

int CARTRIDGE_Initialise(int *argc, char *argv[])
{
 int i;
 int j;
 int help_only = FALSE;




 int type_from_commandline = FALSE;
 int type2_from_commandline = FALSE;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;
  int a_i = FALSE;

  if (strcmp(argv[i], "-cart") == 0) {
   if (i_a) {
    Util_strlcpy(CARTRIDGE_main.filename, argv[++i], sizeof(CARTRIDGE_main.filename));
    if (!type_from_commandline)
     CARTRIDGE_main.type = CARTRIDGE_UNKNOWN;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-cart-type") == 0) {
   if (i_a) {
    Util_sscansdec(argv[++i], &CARTRIDGE_main.type);
    if (CARTRIDGE_main.type < 0 || CARTRIDGE_main.type > CARTRIDGE_LAST_SUPPORTED)
     a_i = TRUE;
    else
     type_from_commandline = TRUE;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-cart2") == 0) {
   if (i_a) {
    Util_strlcpy(CARTRIDGE_piggyback.filename, argv[++i], sizeof(CARTRIDGE_piggyback.filename));
    if (!type2_from_commandline)
     CARTRIDGE_piggyback.type = CARTRIDGE_UNKNOWN;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-cart2-type") == 0) {
   if (i_a) {
    Util_sscansdec(argv[++i], &CARTRIDGE_piggyback.type);
    if (CARTRIDGE_piggyback.type < 0 || CARTRIDGE_piggyback.type > CARTRIDGE_LAST_SUPPORTED)
     a_i = TRUE;
    else
     type2_from_commandline = TRUE;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-cart-autoreboot") == 0)
   CARTRIDGE_autoreboot = TRUE;
  else if (strcmp(argv[i], "-no-cart-autoreboot") == 0)
   CARTRIDGE_autoreboot = FALSE;
  else {
   if (strcmp(argv[i], "-help") == 0) {
    help_only = TRUE;
    Log_print("\t-cart <file>         Install cartridge (raw or CART format)");
    Log_print("\t-cart-type <num>     Set cartridge type (0..%i)", CARTRIDGE_LAST_SUPPORTED);
    Log_print("\t-cart2 <file>        Install piggyback cartridge");
    Log_print("\t-cart2-type <num>    Set piggyback cartridge type (0..%i)", CARTRIDGE_LAST_SUPPORTED);
    Log_print("\t-cart-autoreboot     Reboot when cartridge is inserted/removed");
    Log_print("\t-no-cart-autoreboot  Don't reboot after changing cartridge");
   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  } else if (a_i) {
   Log_print("Invalid argument for '%s'", argv[--i]);
   return FALSE;
  }
 }
 *argc = j;

 if (help_only)
  return TRUE;


 if (CARTRIDGE_main.filename[0] == '\0')
  CARTRIDGE_main.type = CARTRIDGE_NONE;
 if (CARTRIDGE_piggyback.filename[0] == '\0')
  CARTRIDGE_piggyback.type = CARTRIDGE_NONE;

 InitInsert(&CARTRIDGE_main);
 if (CartIsPassthrough(CARTRIDGE_main.type))
  InitInsert(&CARTRIDGE_piggyback);

 return TRUE;
}
