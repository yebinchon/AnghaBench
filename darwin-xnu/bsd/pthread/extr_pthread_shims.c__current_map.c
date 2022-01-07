
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;


 int current_map () ;

__attribute__((used)) static vm_map_t
_current_map(void)
{
 return current_map();
}
