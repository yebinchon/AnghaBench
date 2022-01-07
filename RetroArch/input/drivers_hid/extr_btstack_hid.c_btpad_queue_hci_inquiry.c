
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {void* num_responses; void* length; int lap; } ;
struct btpad_queue_command {TYPE_1__ hci_inquiry; int command; } ;


 int btpad_increment_position (int *) ;
 int btpad_queue_process () ;
 int hci_inquiry_ptr ;
 int insert_position ;

__attribute__((used)) static void btpad_queue_hci_inquiry(
      struct btpad_queue_command *cmd,
      uint32_t lap,
      uint8_t length, uint8_t num_responses)
{
   if (!cmd)
      return;

   cmd->command = hci_inquiry_ptr;
   cmd->hci_inquiry.lap = lap;
   cmd->hci_inquiry.length = length;
   cmd->hci_inquiry.num_responses = num_responses;

   btpad_increment_position(&insert_position);
   btpad_queue_process();
}
