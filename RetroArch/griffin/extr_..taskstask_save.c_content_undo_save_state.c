
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int data; int path; } ;


 int task_push_undo_save_state (int ,int ,int ) ;
 TYPE_1__ undo_save_buf ;

bool content_undo_save_state(void)
{
   return task_push_undo_save_state(undo_save_buf.path,
                             undo_save_buf.data,
                             undo_save_buf.size);
}
