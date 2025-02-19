
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_addr_t ;
typedef int spawn_data ;
typedef int SceNpDrmKey ;


 int RARCH_WARN (char*) ;
 int SYS_PROCESS_PRIMARY_STACK_SIZE_1M ;
 int sceNpDrmProcessExitSpawn (int *,char const*,char const** const,char const**,int ,int,int,int ) ;
 int sys_game_process_exitspawn (char const*,char const** const,char const**,int *,int ,int,int ) ;

__attribute__((used)) static int frontend_ps3_exec_exitspawn(const char *path,
      char const *argv[], char const *envp[])
{
   int ret;
   unsigned i;
   char spawn_data[256];
   SceNpDrmKey *license_data = ((void*)0);

   for(i = 0; i < sizeof(spawn_data); ++i)
      spawn_data[i] = i & 0xff;

   ret = sceNpDrmProcessExitSpawn(license_data, path,
         (const char** const)argv, envp, (sys_addr_t)spawn_data,
         256, 1000, SYS_PROCESS_PRIMARY_STACK_SIZE_1M);

   if(ret < 0)
   {
      RARCH_WARN("SELF file is not of NPDRM type, trying another approach to boot it...\n");
      sys_game_process_exitspawn(path, (const char** const)argv,
            envp, ((void*)0), 0, 1000, SYS_PROCESS_PRIMARY_STACK_SIZE_1M);
   }

   return ret;
}
