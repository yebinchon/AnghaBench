#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct btpad_queue_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct btpad_queue_command*) ; 
 scalar_t__ can_run ; 
 struct btpad_queue_command* commands ; 
 size_t insert_position ; 
 size_t read_position ; 

__attribute__((used)) static void FUNC2(void)
{
   for (; can_run && (insert_position != read_position); can_run--)
   {
      struct btpad_queue_command* cmd = &commands[read_position];
      FUNC1(cmd);
      FUNC0(&read_position);
   }
}