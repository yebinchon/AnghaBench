
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int cpu_boot_arg ;
typedef int OpaqueDTEntryIterator ;
typedef int DTEntry ;


 int DTGetProperty (int ,char*,void**,unsigned int*) ;
 int DTInitEntryIterator (int ,int *) ;
 int DTIterateEntries (int *,int *) ;
 int DTLookupEntry (int *,char*,int *) ;
 scalar_t__ PE_parse_boot_argn (char*,scalar_t__*,int) ;
 int assert (int) ;
 scalar_t__ avail_cpus ;
 int kSuccess ;
 int panic (char*,...) ;
 scalar_t__ strncmp (char*,char*,unsigned int) ;

void
ml_parse_cpu_topology(void)
{
 DTEntry entry, child;
 OpaqueDTEntryIterator iter;
 uint32_t cpu_boot_arg;
 int err;

 err = DTLookupEntry(((void*)0), "/cpus", &entry);
 assert(err == kSuccess);

 err = DTInitEntryIterator(entry, &iter);
 assert(err == kSuccess);

 while (kSuccess == DTIterateEntries(&iter, &child)) {
  ++avail_cpus;
 }

 cpu_boot_arg = avail_cpus;
 if (PE_parse_boot_argn("cpus", &cpu_boot_arg, sizeof(cpu_boot_arg)) &&
     (avail_cpus > cpu_boot_arg))
  avail_cpus = cpu_boot_arg;

 if (avail_cpus == 0)
  panic("No cpus found!");
}
