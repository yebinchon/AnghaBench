
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btpad_queue_command {int dummy; } ;


 int btpad_increment_position (size_t*) ;
 int btpad_queue_process_cmd (struct btpad_queue_command*) ;
 scalar_t__ can_run ;
 struct btpad_queue_command* commands ;
 size_t insert_position ;
 size_t read_position ;

__attribute__((used)) static void btpad_queue_process(void)
{
   for (; can_run && (insert_position != read_position); can_run--)
   {
      struct btpad_queue_command* cmd = &commands[read_position];
      btpad_queue_process_cmd(cmd);
      btpad_increment_position(&read_position);
   }
}
