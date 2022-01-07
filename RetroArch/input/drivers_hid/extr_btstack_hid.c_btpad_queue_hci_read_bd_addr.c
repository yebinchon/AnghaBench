
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btpad_queue_command {int command; } ;


 int btpad_increment_position (int *) ;
 int btpad_queue_process () ;
 int hci_read_bd_addr_ptr ;
 int insert_position ;

__attribute__((used)) static void btpad_queue_hci_read_bd_addr(
      struct btpad_queue_command *cmd)
{
   if (!cmd)
      return;

   cmd->command = hci_read_bd_addr_ptr;

   btpad_increment_position(&insert_position);
   btpad_queue_process();
}
