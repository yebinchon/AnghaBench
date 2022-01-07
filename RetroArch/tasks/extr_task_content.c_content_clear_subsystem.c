
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RARCH_MAX_SUBSYSTEM_ROMS ;
 int free (int *) ;
 int pending_subsystem_init ;
 scalar_t__ pending_subsystem_rom_id ;
 int ** pending_subsystem_roms ;

void content_clear_subsystem(void)
{
   unsigned i;

   pending_subsystem_rom_id = 0;
   pending_subsystem_init = 0;

   for (i = 0; i < RARCH_MAX_SUBSYSTEM_ROMS; i++)
   {
      if (pending_subsystem_roms[i])
      {
         free(pending_subsystem_roms[i]);
         pending_subsystem_roms[i] = ((void*)0);
      }
   }
}
