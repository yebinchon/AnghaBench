
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int kpc_get_counter_count (int ) ;

__attribute__((used)) static int
sysctl_counter_size( uint32_t classes )
{
 return kpc_get_counter_count(classes) * sizeof(uint64_t);
}
