
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_status {int pointer_id; struct pointer_status* next; } ;
struct dinput_input {struct pointer_status pointer_head; } ;


 int free (struct pointer_status*) ;

__attribute__((used)) static void dinput_delete_pointer(struct dinput_input *di, int pointer_id)
{
   struct pointer_status *check_pos = &di->pointer_head;

   while (check_pos && check_pos->next)
   {
      if (check_pos->next->pointer_id == pointer_id)
      {
         struct pointer_status *to_delete = check_pos->next;

         check_pos->next = check_pos->next->next;
         free(to_delete);
      }
      check_pos = check_pos->next;
   }
}
