
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_element; } ;
typedef TYPE_1__ rcheevos_deactivate_t ;



__attribute__((used)) static int rcheevos_deactivate_index(void* userdata, unsigned int index)
{
   rcheevos_deactivate_t* ud = (rcheevos_deactivate_t*)userdata;

   ud->is_element = 1;
   return 0;
}
