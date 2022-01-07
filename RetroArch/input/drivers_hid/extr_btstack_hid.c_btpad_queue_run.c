
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int btpad_queue_process () ;
 int can_run ;

__attribute__((used)) static void btpad_queue_run(uint32_t count)
{
   can_run = count;

   btpad_queue_process();
}
