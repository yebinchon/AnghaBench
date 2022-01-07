
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int csh ;
struct TYPE_4__ {int value; int str; } ;
struct TYPE_3__ {int second_value; int first_value; int str; } ;


 scalar_t__ CS_ERR_OK ;



 int NUMARCH ;
 int NUMMODE ;
 int NUMOPTION ;
 int arches ;
 int counter ;
 scalar_t__ cs_open (int,int,int *) ;
 scalar_t__ cs_option (int ,int ,int ) ;
 scalar_t__ e_flag ;
 int failed_setup ;
 int fprintf (int ,char*) ;
 int free_strs (char**,int) ;
 int get_value (int ,int ,char*) ;
 char** list_lines ;
 scalar_t__ malloc (int) ;
 int mc_mode ;
 TYPE_2__* modes ;
 TYPE_1__* options ;
 int size_lines ;
 char** split (char*,char*,int*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strstr (char*,int ) ;

__attribute__((used)) static int setup_MC(void **state)
{
 csh *handle;
 char **list_params;
 int size_params;
 int arch, mode;
 int i, index, tmp_counter;

 if (failed_setup) {
  fprintf(stderr, "[  ERROR   ] --- Invalid file to setup\n");
  return -1;
 }

 tmp_counter = 0;
 while (tmp_counter < size_lines && list_lines[tmp_counter][0] != '#')
  tmp_counter++;

 list_params = split(list_lines[tmp_counter] + 2, ", ", &size_params);
 if (size_params != 3) {
  fprintf(stderr, "[  ERROR   ] --- Invalid options ( arch, mode, option )\n");
  failed_setup = 1;
  return -1;
 }

 arch = get_value(arches, NUMARCH, list_params[0]);
 if (!strcmp(list_params[0], "CS_ARCH_ARM64"))
  mc_mode = 2;
 else
  mc_mode = 1;

 mode = 0;
 for (i = 0; i < NUMMODE; ++i) {
  if (strstr(list_params[1], modes[i].str)) {
   mode += modes[i].value;
   switch (modes[i].value) {
    case 130:
     mc_mode = 0;
     break;
    case 129:
     mc_mode = 2;
     break;
    case 128:
     mc_mode = 1;
     break;
    default:
     break;
   }
  }
 }

 if (arch == -1) {
  fprintf(stderr, "[  ERROR   ] --- Arch is not supported!\n");
  failed_setup = 1;
  return -1;
 }

 handle = (csh *)malloc(sizeof(csh));
 if(cs_open(arch, mode, handle) != CS_ERR_OK) {
  fprintf(stderr, "[  ERROR   ] --- Cannot initialize capstone\n");
  failed_setup = 1;
  return -1;
 }

 for (i = 0; i < NUMOPTION; ++i) {
  if (strstr(list_params[2], options[i].str)) {
   if (cs_option(*handle, options[i].first_value, options[i].second_value) != CS_ERR_OK) {
    fprintf(stderr, "[  ERROR   ] --- Option is not supported for this arch/mode\n");
    failed_setup = 1;
    return -1;
   }
  }
 }

 *state = (void *)handle;
 counter++;
 if (e_flag == 0)
  while (counter < size_lines && strncmp(list_lines[counter], "0x", 2))
   counter++;
 else
  while (counter < size_lines && strncmp(list_lines[counter], "// 0x", 5))
   counter++;

 free_strs(list_params, size_params);
 return 0;
}
