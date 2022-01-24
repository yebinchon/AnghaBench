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
struct sbuf {int s_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 

int
FUNC2(struct sbuf *s)
{
	FUNC1(s);
	/* don't care if it's finished or not */

	if (FUNC0(s))
		return (-1);
	return s->s_len;
}