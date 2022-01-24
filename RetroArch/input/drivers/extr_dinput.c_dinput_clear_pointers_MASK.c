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
struct pointer_status {struct pointer_status* next; } ;
struct dinput_input {struct pointer_status pointer_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pointer_status*) ; 

__attribute__((used)) static void FUNC1(struct dinput_input *di)
{
   struct pointer_status *pointer = &di->pointer_head;

   while (pointer->next)
   {
      struct pointer_status *del = pointer->next;

      pointer->next = pointer->next->next;
      FUNC0(del);
   }
}