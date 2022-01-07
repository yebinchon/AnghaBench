
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_zone_name_array_t ;
typedef int mach_zone_info_array_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int host_priv_t ;


 int mach_memory_info (int ,int *,int *,int *,int *,int *,int *) ;

kern_return_t
mach_zone_info(
 host_priv_t host,
 mach_zone_name_array_t *namesp,
 mach_msg_type_number_t *namesCntp,
 mach_zone_info_array_t *infop,
 mach_msg_type_number_t *infoCntp)
{
 return (mach_memory_info(host, namesp, namesCntp, infop, infoCntp, ((void*)0), ((void*)0)));
}
