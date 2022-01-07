
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int kpc_get_counter_count (int ) ;

__attribute__((used)) static int
sysctl_actionid_size( uint32_t classes )
{
 return kpc_get_counter_count(classes) * sizeof(int32_t);
}
