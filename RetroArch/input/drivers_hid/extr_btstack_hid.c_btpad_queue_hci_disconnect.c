
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int reason; int handle; } ;
struct btpad_queue_command {TYPE_1__ hci_disconnect; int command; } ;


 int btpad_increment_position (int *) ;
 int btpad_queue_process () ;
 int hci_disconnect_ptr ;
 int insert_position ;

__attribute__((used)) static void btpad_queue_hci_disconnect(
      struct btpad_queue_command *cmd,
      uint16_t handle, uint8_t reason)
{
   if (!cmd)
      return;

   cmd->command = hci_disconnect_ptr;
   cmd->hci_disconnect.handle = handle;
   cmd->hci_disconnect.reason = reason;

   btpad_increment_position(&insert_position);
   btpad_queue_process();
}
