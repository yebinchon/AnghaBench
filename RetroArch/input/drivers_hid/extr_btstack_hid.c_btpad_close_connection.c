
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btstack_hid_adapter {scalar_t__ handle; } ;


 int btpad_queue_hci_disconnect (int *,scalar_t__,int) ;
 int * commands ;
 size_t insert_position ;
 int memset (struct btstack_hid_adapter*,int ,int) ;

__attribute__((used)) static void btpad_close_connection(struct btstack_hid_adapter* connection)
{
   if (!connection)
      return;

   if (connection->handle)
      btpad_queue_hci_disconnect(&commands[insert_position],
            connection->handle, 0x15);

   memset(connection, 0, sizeof(struct btstack_hid_adapter));
}
