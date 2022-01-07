
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct __argv {int dummy; } ;
typedef int (* entrypoint ) () ;
struct TYPE_3__ {scalar_t__ argvMagic; } ;


 scalar_t__ ARGV_MAGIC ;
 scalar_t__ EXECUTABLE_MEM_ADDR ;
 TYPE_1__* SYSTEM_ARGV ;
 scalar_t__ load_dol_image (void*) ;
 scalar_t__ load_elf_image (void*) ;
 int memcpy (void*,TYPE_1__*,int) ;
 int sync_before_exec (void*,int) ;
 int valid_elf_image (void*) ;

void app_booter_main(void)
{
 entrypoint exeEntryPoint;
 uint32_t exeEntryPointAddress = 0;
 void *exeBuffer = (void*)EXECUTABLE_MEM_ADDR;

 if (valid_elf_image(exeBuffer) == 1)
  exeEntryPointAddress = load_elf_image(exeBuffer);
 else
  exeEntryPointAddress = load_dol_image(exeBuffer);

 exeEntryPoint = (entrypoint) exeEntryPointAddress;

 if (!exeEntryPoint)
  return;

 if (SYSTEM_ARGV->argvMagic == ARGV_MAGIC)
 {
  void *new_argv = (void*)(exeEntryPointAddress + 8);
  memcpy(new_argv, SYSTEM_ARGV, sizeof(struct __argv));
  sync_before_exec(new_argv, sizeof(struct __argv));
 }

 exeEntryPoint();
}
