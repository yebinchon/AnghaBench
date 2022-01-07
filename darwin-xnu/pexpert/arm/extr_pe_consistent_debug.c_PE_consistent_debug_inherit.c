
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dbg_registry_t ;
typedef int DTEntry ;


 scalar_t__ DTGetProperty (int ,char*,void**,int *) ;
 scalar_t__ DTLookupEntry (int *,char*,int *) ;
 int * consistent_debug_registry ;
 scalar_t__ kSuccess ;
 scalar_t__ ml_map_high_window (uintptr_t,int) ;

int PE_consistent_debug_inherit(void)
{
 DTEntry entryP;
 uintptr_t *prop_data;
 uintptr_t root_pointer = 0;
 uint32_t size;

        if ((DTLookupEntry(((void*)0), "/chosen", &entryP) == kSuccess))
  if (DTGetProperty(entryP, "consistent-debug-root", (void **)&prop_data, &size) == kSuccess)
   root_pointer = prop_data[0];
 if (root_pointer == 0)
  return -1;
 consistent_debug_registry = (dbg_registry_t *)ml_map_high_window(root_pointer, sizeof(dbg_registry_t));
 return 0;
}
