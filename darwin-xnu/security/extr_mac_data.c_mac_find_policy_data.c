
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_policy_conf {int mpc_data; } ;
typedef int mac_policy_handle_t ;


 int ENOENT ;
 int mac_find_module_data (int ,char const*,void**,size_t*) ;
 struct mac_policy_conf* mac_get_mpc (int const) ;

int
mac_find_policy_data(const mac_policy_handle_t handle, const char *key,
    void **valp, size_t *sizep)
{
 struct mac_policy_conf *mpc;
 int error = ENOENT;

 if ((mpc = mac_get_mpc(handle)) != ((void*)0))
  error = mac_find_module_data(mpc->mpc_data, key, valp, sizep);
 return (error);
}
