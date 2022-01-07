
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_size; } ;


 TYPE_1__ cheat_manager_state ;

unsigned cheat_manager_get_buf_size(void)
{
   return cheat_manager_state.buf_size;
}
