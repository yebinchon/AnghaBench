
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint64_t ;
typedef int DTEntry ;


 scalar_t__ DTGetProperty (int ,char const*,void**,unsigned int*) ;
 scalar_t__ DTLookupEntry (int ,char*,int *) ;
 scalar_t__ kSuccess ;
 int kprintf (char*,...) ;
 char const* tsc_at_boot ;

__attribute__((used)) static uint64_t
EFI_get_frequency(const char *prop)
{
 uint64_t frequency = 0;
 DTEntry entry;
 void *value;
 unsigned int size;

 if (DTLookupEntry(0, "/efi/platform", &entry) != kSuccess) {
  kprintf("EFI_get_frequency: didn't find /efi/platform\n");
  return 0;
 }
 if (DTGetProperty(entry,prop,&value,&size) != kSuccess) {
  kprintf("EFI_get_frequency: property %s not found\n", prop);
  return 0;
 }
 if (size == sizeof(uint64_t)) {
  frequency = *(uint64_t *) value;
  kprintf("EFI_get_frequency: read %s value: %llu\n",
   prop, frequency);
 }




 if (DTGetProperty(entry,"InitialTSC",&value,&size) == kSuccess) {
  if (size == sizeof(uint64_t)) {
   tsc_at_boot = *(uint64_t *) value;
   kprintf("EFI_get_frequency: read InitialTSC: %llu\n",
    tsc_at_boot);
  }
 }

 return frequency;
}
