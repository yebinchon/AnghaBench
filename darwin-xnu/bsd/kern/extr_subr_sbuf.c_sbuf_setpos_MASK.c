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
struct sbuf {int s_size; int s_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct sbuf *s, int pos)
{
	FUNC1(s);
	FUNC2(s, 0);

	FUNC0(pos >= 0,
	    ("attempt to seek to a negative position (%d)", pos));
	FUNC0(pos < s->s_size,
	    ("attempt to seek past end of sbuf (%d >= %d)", pos, s->s_size));

	if (pos < 0 || pos > s->s_len)
		return (-1);
	s->s_len = pos;
	return (0);
}