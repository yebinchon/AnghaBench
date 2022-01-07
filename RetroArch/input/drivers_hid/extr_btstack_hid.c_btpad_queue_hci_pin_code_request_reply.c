
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin; int bd_addr; } ;
struct btpad_queue_command {TYPE_1__ hci_pin_code_request_reply; int command; } ;
typedef int bd_addr_t ;


 int btpad_increment_position (int *) ;
 int btpad_queue_process () ;
 int hci_pin_code_request_reply_ptr ;
 int insert_position ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void btpad_queue_hci_pin_code_request_reply(
      struct btpad_queue_command *cmd,
      bd_addr_t bd_addr, bd_addr_t pin)
{
   if (!cmd)
      return;

   cmd->command = hci_pin_code_request_reply_ptr;
   memcpy(cmd->hci_pin_code_request_reply.bd_addr, bd_addr, sizeof(bd_addr_t));
   memcpy(cmd->hci_pin_code_request_reply.pin, pin, sizeof(bd_addr_t));

   btpad_increment_position(&insert_position);
   btpad_queue_process();
}
