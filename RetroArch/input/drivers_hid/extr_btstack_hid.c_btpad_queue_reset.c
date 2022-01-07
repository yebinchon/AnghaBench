
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int can_run ;
 scalar_t__ insert_position ;
 scalar_t__ read_position ;

__attribute__((used)) static void btpad_queue_reset(void)
{
   insert_position = 0;
   read_position = 0;
   can_run = 1;
}
