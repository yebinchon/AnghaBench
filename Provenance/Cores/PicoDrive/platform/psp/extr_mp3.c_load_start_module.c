
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceUID ;


 int PSP_MEMORY_PARTITION_KERNEL ;
 int kuKernelLoadModule (char const*,int ,int *) ;
 int lprintf (char*,...) ;
 int pspSdkLoadStartModule (char const*,int ) ;
 int sceKernelStartModule (int,int ,int *,int*,int ) ;

__attribute__((used)) static SceUID load_start_module(const char *prxname)
{
 SceUID mod, mod1;
 int status, ret;

 mod = pspSdkLoadStartModule(prxname, PSP_MEMORY_PARTITION_KERNEL);
 if (mod < 0) {
  lprintf("failed to load %s (%08x), trying kuKernelLoadModule\n", prxname, mod);
  mod1 = kuKernelLoadModule(prxname, 0, ((void*)0));
  if (mod1 < 0) lprintf("kuKernelLoadModule failed with %08x\n", mod1);
  else {
   ret = sceKernelStartModule(mod1, 0, ((void*)0), &status, 0);
   if (ret < 0) lprintf("sceKernelStartModule failed with %08x\n", ret);
   else mod = mod1;
  }
 }
 return mod;
}
