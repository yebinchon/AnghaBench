
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (int*,int ,int) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;
 int x86_cpuid (int,int*) ;

void cpu_features_get_model_name(char *name, int len)
{
   if (!name)
      return;
   return;

}
