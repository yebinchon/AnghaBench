
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t IN_BIND_OFFS (int,int) ;
 int IN_CFG_BIND_COUNT ;
 int in_get_config (int,int ,int*) ;
 int* in_get_dev_binds (int) ;

__attribute__((used)) static int count_bound_keys(int dev_id, int action_mask, int bindtype)
{
 const int *binds;
 int k, keys = 0;
 int count = 0;

 binds = in_get_dev_binds(dev_id);
 if (binds == ((void*)0))
  return 0;

 in_get_config(dev_id, IN_CFG_BIND_COUNT, &count);
 for (k = 0; k < count; k++)
 {
  if (binds[IN_BIND_OFFS(k, bindtype)] & action_mask)
   keys++;
 }

 return keys;
}
