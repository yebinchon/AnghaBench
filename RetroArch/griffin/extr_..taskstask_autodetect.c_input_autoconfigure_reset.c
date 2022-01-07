
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int joyaxis; int joykey; } ;


 int AXIS_NONE ;
 unsigned int MAX_USERS ;
 int NO_BTN ;
 unsigned int RARCH_BIND_LIST_END ;
 TYPE_1__** input_autoconf_binds ;
 int input_autoconfigure_swap_override ;
 scalar_t__* input_autoconfigured ;
 scalar_t__* input_device_name_index ;

void input_autoconfigure_reset(void)
{
   unsigned i, j;

   for (i = 0; i < MAX_USERS; i++)
   {
      for (j = 0; j < RARCH_BIND_LIST_END; j++)
      {
         input_autoconf_binds[i][j].joykey = NO_BTN;
         input_autoconf_binds[i][j].joyaxis = AXIS_NONE;
      }
      input_device_name_index[i] = 0;
      input_autoconfigured[i] = 0;
   }

   input_autoconfigure_swap_override = 0;
}
