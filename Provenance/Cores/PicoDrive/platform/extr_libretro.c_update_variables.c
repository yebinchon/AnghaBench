
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_variable {char* key; int * value; } ;


 int POPT_DIS_SPRITE_LIM ;
 int POPT_EN_DRC ;
 int POPT_EN_MCD_RAMCART ;
 int PicoOpt ;
 int PicoSetInputDevice (int,int ) ;
 int RETRO_ENVIRONMENT_GET_VARIABLE ;
 scalar_t__ environ_cb (int ,struct retro_variable*) ;
 int input_name_to_val (int *) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static void update_variables(void)
{
 struct retro_variable var;

 var.value = ((void*)0);
 var.key = "picodrive_input1";
 if (environ_cb(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value)
  PicoSetInputDevice(0, input_name_to_val(var.value));

 var.value = ((void*)0);
 var.key = "picodrive_input2";
 if (environ_cb(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value)
  PicoSetInputDevice(1, input_name_to_val(var.value));

 var.value = ((void*)0);
 var.key = "picodrive_sprlim";
 if (environ_cb(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value) {
  if (strcmp(var.value, "enabled") == 0)
   PicoOpt |= POPT_DIS_SPRITE_LIM;
  else
   PicoOpt &= ~POPT_DIS_SPRITE_LIM;
 }

 var.value = ((void*)0);
 var.key = "picodrive_ramcart";
 if (environ_cb(RETRO_ENVIRONMENT_GET_VARIABLE, &var) && var.value) {
  if (strcmp(var.value, "enabled") == 0)
   PicoOpt |= POPT_EN_MCD_RAMCART;
  else
   PicoOpt &= ~POPT_EN_MCD_RAMCART;
 }
}
