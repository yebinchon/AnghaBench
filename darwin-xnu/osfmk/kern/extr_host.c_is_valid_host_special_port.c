
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_LAST_SPECIAL_KERNEL_PORT ;
 int HOST_MAX_SPECIAL_KERNEL_PORT ;
 int HOST_MAX_SPECIAL_PORT ;
 int HOST_MIN_SPECIAL_PORT ;

__attribute__((used)) static bool
is_valid_host_special_port(int id)
{
 return (id <= HOST_MAX_SPECIAL_PORT) &&
        (id >= HOST_MIN_SPECIAL_PORT) &&
        ((id <= HOST_LAST_SPECIAL_KERNEL_PORT) || (id > HOST_MAX_SPECIAL_KERNEL_PORT));
}
