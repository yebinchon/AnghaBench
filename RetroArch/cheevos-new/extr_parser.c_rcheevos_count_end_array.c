
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_lboards; scalar_t__ in_cheevos; } ;
typedef TYPE_1__ rcheevos_countud_t ;



__attribute__((used)) static int rcheevos_count_end_array(void* userdata)
{
  rcheevos_countud_t* ud = (rcheevos_countud_t*)userdata;

   ud->in_cheevos = 0;
   ud->in_lboards = 0;
   return 0;
}
