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
struct waitq_link {int dummy; } ;
struct lt_elem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_wqlinktable ; 
 struct lt_elem* FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lt_elem*) ; 

__attribute__((used)) static struct waitq_link *FUNC2(int type)
{
	struct lt_elem *elem;

	elem = FUNC0(&g_wqlinktable, type, 1, 0);
	FUNC1(elem);
	return (struct waitq_link *)elem;
}