
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_status {struct pointer_status* next; } ;
struct dinput_input {struct pointer_status pointer_head; } ;



__attribute__((used)) static void dinput_add_pointer(struct dinput_input *di,
      struct pointer_status *new_pointer)
{
   struct pointer_status *insert_pos = ((void*)0);

   new_pointer->next = ((void*)0);
   insert_pos = &di->pointer_head;

   while (insert_pos->next)
      insert_pos = insert_pos->next;
   insert_pos->next = new_pointer;
}
