#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct buffer_list {int dummy; } ;
struct TYPE_2__ {struct buffer_list* next; } ;
struct buffer {TYPE_1__ first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 

__attribute__((used)) static void
FUNC2(struct buffer *buffer)
{
   struct buffer_list *list = buffer->first.next;
   FUNC1(buffer);
   FUNC0(list);
}