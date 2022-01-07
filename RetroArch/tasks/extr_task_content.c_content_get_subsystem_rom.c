
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** pending_subsystem_roms ;

char* content_get_subsystem_rom(unsigned index)
{
   return pending_subsystem_roms[index];
}
