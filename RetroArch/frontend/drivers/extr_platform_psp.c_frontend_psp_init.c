
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceAppUtilInitParam ;
typedef int SceAppUtilBootParam ;


 int PSP_MEMORY_PARTITION_KERNEL ;
 int SCE_SYSMODULE_NET ;
 int memset (int *,int ,int) ;
 int pspDebugScreenClear () ;
 int pspDebugScreenInit () ;
 int pspFpuSetEnable (int ) ;
 int pspSdkLoadStartModule (char*,int ) ;
 int pthread_init () ;
 int sceAppUtilInit (int *,int *) ;
 int scePowerSetArmClockFrequency (int) ;
 int scePowerSetBusClockFrequency (int) ;
 int scePowerSetClockFrequency (int,int,int) ;
 int scePowerSetGpuClockFrequency (int) ;
 int scePowerSetGpuXbarClockFrequency (int) ;
 int sceSysmoduleLoadModule (int ) ;
 int setup_callback () ;

__attribute__((used)) static void frontend_psp_init(void *data)
{
   (void)data;

   pspDebugScreenInit();
   pspDebugScreenClear();

   setup_callback();

   pspFpuSetEnable(0);
   scePowerSetClockFrequency(333,333,166);

   pthread_init();
}
