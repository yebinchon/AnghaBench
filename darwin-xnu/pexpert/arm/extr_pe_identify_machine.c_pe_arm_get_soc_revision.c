
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DTEntry ;


 scalar_t__ DTFindEntry (char*,char*,int *) ;
 scalar_t__ DTGetProperty (int ,char*,void**,int*) ;
 scalar_t__ kSuccess ;

uint32_t
pe_arm_get_soc_revision(void)
{
 DTEntry entryP;
 uint32_t *value;
 uint32_t size;

 if ((DTFindEntry("name", "arm-io", &entryP) == kSuccess)
     && (DTGetProperty(entryP, "chip-revision", (void **)&value, &size) == kSuccess)) {
  if (size == 8)
   return((uint32_t)*(unsigned long long *)value);
  else
   return(*value);
 }
 return 0;
}
