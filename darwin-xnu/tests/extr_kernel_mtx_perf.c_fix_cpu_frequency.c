
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_LOG (char*,...) ;
 int T_QUIET ;
 int environ ;
 int free (char*) ;
 char* malloc (size_t) ;
 int posix_spawn (int*,char* const,int *,int *,char* const*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int sscanf (char*,char*,float*,char*) ;
 char* strstr (char*,char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
fix_cpu_frequency(void)
{
 int spawn_ret, pid;
 int ret, nom_freq;
 size_t len;
 float val;
 char scale;
 char *buffer, *cpu_freq;
 char str_val[10];

 ret = sysctlbyname("machdep.cpu.brand_string", ((void*)0), &len, ((void*)0), 0);
 T_QUIET;T_ASSERT_POSIX_SUCCESS(ret, "sysctlbyname machdep.cpu.brand_string");

 buffer = malloc(len+2);
 ret = sysctlbyname("machdep.cpu.brand_string", buffer, &len, ((void*)0), 0);
 T_QUIET;T_ASSERT_POSIX_SUCCESS(ret, "sysctlbyname machdep.cpu.brand_string");
 buffer[len+1] = '\0';

 cpu_freq = strstr(buffer, "CPU @ ");
 if (cpu_freq == ((void*)0)) {
  T_LOG("Could not fix frequency, %s field not present\n", "CPU @ ");
  goto out;
 }

 if (strstr(cpu_freq, "Hz") != ((void*)0)) {
  sscanf(cpu_freq, "CPU @ %f%cHz", &val, &scale);
 } else {
  if (strstr(cpu_freq, "hz") != ((void*)0)) {
   sscanf(cpu_freq, "CPU @ %f%chz", &val, &scale);
  } else {
   T_LOG("Could not fix frequency, %s field not present\n", "Hz");
   goto out;
  }
 }

 switch(scale){
 case 'M':
 case 'm':
  nom_freq = (int) val;
  break;
 case 'G':
 case 'g':
  nom_freq = (int) (val*1000);
  break;
 default:
  T_LOG("Could not fix frequency, scale field is %c\n", scale);
  goto out;
 }

 snprintf(str_val, 10, "%d", nom_freq);
 T_LOG("Setting min and max cpu frequency to %d (%s)\n", nom_freq, str_val);
 char *xcpm_args[] = {"/usr/local/bin/xcpm", "limits", str_val, str_val, ((void*)0)};
 spawn_ret = posix_spawn(&pid, xcpm_args[0], ((void*)0), ((void*)0), xcpm_args, environ);
 waitpid(pid, &spawn_ret, 0);

out:
 free(buffer);
 return;

}
