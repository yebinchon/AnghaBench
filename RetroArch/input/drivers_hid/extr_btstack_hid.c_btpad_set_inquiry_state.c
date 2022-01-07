
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HCI_INQUIRY_LAP ;
 int btpad_queue_hci_inquiry (int *,int ,int,int) ;
 int * commands ;
 int inquiry_off ;
 int inquiry_running ;
 size_t insert_position ;

__attribute__((used)) static void btpad_set_inquiry_state(bool on)
{
   inquiry_off = !on;

   if (!inquiry_off && !inquiry_running)
      btpad_queue_hci_inquiry(&commands[insert_position],
            HCI_INQUIRY_LAP, 3, 1);
}
