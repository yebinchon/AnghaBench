
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int ifnet_t ;
typedef int ifnet_family_t ;
typedef int errno_t ;


 int FALSE ;
 int ifnet_list_get_common (int ,int ,int **,int *) ;

errno_t
ifnet_list_get(ifnet_family_t family, ifnet_t **list, u_int32_t *count)
{
 return (ifnet_list_get_common(family, FALSE, list, count));
}
