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
struct sbuf {int* s_buf; int /*<<< orphan*/  s_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  SBUF_OVERFLOWED ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sbuf*,int) ; 

int
FUNC6(struct sbuf *s, int c)
{
	FUNC3(s);
	FUNC4(s, 0);

	if (FUNC0(s))
		return (-1);

	if (!FUNC1(s) && FUNC5(s, 1) < 0) {
		FUNC2(s, SBUF_OVERFLOWED);
		return (-1);
	}
	if (c != '\0')
	    s->s_buf[s->s_len++] = c;
	return (0);
}