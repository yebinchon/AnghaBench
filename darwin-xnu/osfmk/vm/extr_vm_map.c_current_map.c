
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;


 int current_map_fast () ;

vm_map_t
current_map(void)
{
 return (current_map_fast());
}
