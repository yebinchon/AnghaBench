
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoConfigFile ;
 scalar_t__ config_slot ;
 int emu_make_path (char*,int ,int) ;
 int sprintf (char*,char*,scalar_t__) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void make_config_cfg(char *cfg_buff_512)
{
 emu_make_path(cfg_buff_512, PicoConfigFile, 512-6);
 if (config_slot != 0)
 {
  char *p = strrchr(cfg_buff_512, '.');
  if (p == ((void*)0))
   p = cfg_buff_512 + strlen(cfg_buff_512);
  sprintf(p, ".%i.cfg", config_slot);
 }
 cfg_buff_512[511] = 0;
}
