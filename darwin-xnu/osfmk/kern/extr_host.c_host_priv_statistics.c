
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int host_t ;
typedef scalar_t__ host_priv_t ;
typedef int host_info_t ;
typedef int host_flavor_t ;


 int host_statistics (int ,int ,int ,int *) ;

kern_return_t
host_priv_statistics(host_priv_t host_priv, host_flavor_t flavor, host_info_t info, mach_msg_type_number_t * count)
{
 return (host_statistics((host_t)host_priv, flavor, info, count));
}
