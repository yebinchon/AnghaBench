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
struct sbuf {int s_len; int /*<<< orphan*/ * s_buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct sbuf *s)
{
	FUNC1(s);
	FUNC2(s, 0);

	if (FUNC0(s))
		return (-1);

	while (s->s_len && FUNC3(s->s_buf[s->s_len-1]))
		--s->s_len;

	return (0);
}