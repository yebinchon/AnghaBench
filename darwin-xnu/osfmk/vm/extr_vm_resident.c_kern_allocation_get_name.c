
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_allocation_name_t ;


 char const* KA_NAME (int ) ;

const char *
kern_allocation_get_name(kern_allocation_name_t allocation)
{
    return (KA_NAME(allocation));
}
