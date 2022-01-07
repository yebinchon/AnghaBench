
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_family_t ;
typedef int errno_t ;


 int EINVAL ;
 int NSI_IF_FAM_ID ;
 int net_str_id_find_internal (char const*,int *,int ,int) ;

errno_t
ifnet_interface_family_find(const char *module_string,
    ifnet_family_t *family_id)
{
 if (module_string == ((void*)0) || family_id == ((void*)0))
  return (EINVAL);

 return (net_str_id_find_internal(module_string, family_id,
     NSI_IF_FAM_ID, 1));
}
