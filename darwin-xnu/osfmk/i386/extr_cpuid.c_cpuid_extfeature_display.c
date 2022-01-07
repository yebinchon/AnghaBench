
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int cpuid_extfeatures () ;
 int cpuid_get_extfeature_names (int ,char*,int) ;
 int kprintf (char*,char const*,int ) ;

void
cpuid_extfeature_display(
 const char *header)
{
 char buf[256];

 kprintf("%s: %s\n", header,
    cpuid_get_extfeature_names(cpuid_extfeatures(),
      buf, sizeof(buf)));
}
