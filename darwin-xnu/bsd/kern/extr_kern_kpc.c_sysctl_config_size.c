
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kpc_config_t ;


 int kpc_get_config_count (int ) ;

__attribute__((used)) static int
sysctl_config_size( uint32_t config )
{
 return kpc_get_config_count(config) * sizeof(kpc_config_t);
}
