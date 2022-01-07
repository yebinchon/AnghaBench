
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int on; } ;
struct btpad_queue_command {TYPE_1__ btstack_set_power_mode; int command; } ;


 int btpad_increment_position (int *) ;
 int btpad_queue_process () ;
 int btstack_set_power_mode_ptr ;
 int insert_position ;

__attribute__((used)) static void btpad_queue_btstack_set_power_mode(
      struct btpad_queue_command *cmd, uint8_t on)
{
   if (!cmd)
      return;

   cmd->command = btstack_set_power_mode_ptr;
   cmd->btstack_set_power_mode.on = on;

   btpad_increment_position(&insert_position);
   btpad_queue_process();
}
