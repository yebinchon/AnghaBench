
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,int ,int ,size_t,char*) ;
 scalar_t__ malloc (size_t) ;
 int pending_subsystem_id ;
 int pending_subsystem_ident ;
 size_t pending_subsystem_rom_id ;
 char** pending_subsystem_roms ;
 int strlcpy (char*,char const*,size_t) ;

void content_add_subsystem(const char* path)
{
   size_t pending_size = PATH_MAX_LENGTH * sizeof(char);
   pending_subsystem_roms[pending_subsystem_rom_id] = (char*)malloc(pending_size);

   strlcpy(pending_subsystem_roms[pending_subsystem_rom_id], path, pending_size);
   RARCH_LOG("[subsystem] subsystem id: %d subsystem ident: %s rom id: %d, rom path: %s\n",
      pending_subsystem_id, pending_subsystem_ident, pending_subsystem_rom_id,
      pending_subsystem_roms[pending_subsystem_rom_id]);
   pending_subsystem_rom_id++;
}
