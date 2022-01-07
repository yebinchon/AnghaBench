
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_BINDTYPE_COUNT ;
 int IN_BIND_OFFS (int,int) ;
 int IN_VK_NKEYS ;
 int in_vk_get_key_name (int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int in_vk_clean_binds(void *drv_data, int *binds, int *def_binds)
{
 int i, count = 0;

 for (i = 0; i < IN_VK_NKEYS; i++) {
  int t, offs;
  for (t = 0; t < IN_BINDTYPE_COUNT; t++) {
   offs = IN_BIND_OFFS(i, t);
   if (strcmp(in_vk_get_key_name(i), "Unkn") == 0)
    binds[offs] = def_binds[offs] = 0;
   if (binds[offs])
    count++;
  }
 }

 return count;
}
