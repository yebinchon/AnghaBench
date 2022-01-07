
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp_buf ;
typedef int fatal_memkill ;
typedef int exc_corpse_forking ;


 int FALSE ;
 scalar_t__ PE_parse_boot_argn (char*,...) ;
 int corpse_enabled_config ;
 int corpse_for_fatal_memkill ;
 int exc_via_corpse_forking ;

void corpses_init(){
 char temp_buf[20];
 int exc_corpse_forking;
 int fatal_memkill;
 if (PE_parse_boot_argn("-no_corpses", temp_buf, sizeof(temp_buf))) {
  corpse_enabled_config = FALSE;
 }
 if (PE_parse_boot_argn("exc_via_corpse_forking", &exc_corpse_forking, sizeof(exc_corpse_forking))) {
  exc_via_corpse_forking = exc_corpse_forking;
 }
 if (PE_parse_boot_argn("corpse_for_fatal_memkill", &fatal_memkill, sizeof(fatal_memkill))) {
  corpse_for_fatal_memkill = fatal_memkill;
 }
}
