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
struct btpad_queue_command {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  hci_read_bd_addr_ptr ; 
 int /*<<< orphan*/  insert_position ; 

__attribute__((used)) static void FUNC2(
      struct btpad_queue_command *cmd)
{
   if (!cmd)
      return;

   cmd->command = hci_read_bd_addr_ptr;

   FUNC0(&insert_position);
   FUNC1();
}