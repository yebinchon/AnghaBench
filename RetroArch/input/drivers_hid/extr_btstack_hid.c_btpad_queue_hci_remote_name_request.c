
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int clock_offset; void* reserved; void* page_scan_repetition_mode; int bd_addr; } ;
struct btpad_queue_command {TYPE_1__ hci_remote_name_request; int command; } ;
typedef int bd_addr_t ;


 int btpad_increment_position (int *) ;
 int btpad_queue_process () ;
 int hci_remote_name_request_ptr ;
 int insert_position ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void btpad_queue_hci_remote_name_request(
      struct btpad_queue_command *cmd,
      bd_addr_t bd_addr,
      uint8_t page_scan_repetition_mode,
      uint8_t reserved, uint16_t clock_offset)
{
   if (!cmd)
      return;

   cmd->command = hci_remote_name_request_ptr;
   memcpy(cmd->hci_remote_name_request.bd_addr, bd_addr, sizeof(bd_addr_t));
   cmd->hci_remote_name_request.page_scan_repetition_mode =
      page_scan_repetition_mode;
   cmd->hci_remote_name_request.reserved = reserved;
   cmd->hci_remote_name_request.clock_offset = clock_offset;

   btpad_increment_position(&insert_position);
   btpad_queue_process();
}
