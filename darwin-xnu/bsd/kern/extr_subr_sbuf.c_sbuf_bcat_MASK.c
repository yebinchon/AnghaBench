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
struct sbuf {int /*<<< orphan*/  s_len; int /*<<< orphan*/ * s_buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  SBUF_OVERFLOWED ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sbuf*,size_t) ; 

int
FUNC6(struct sbuf *s, const void *buf, size_t len)
{
	const char *str = buf;

	FUNC3(s);
	FUNC4(s, 0);

	if (FUNC0(s))
		return (-1);

	for (; len; len--) {
		if (!FUNC1(s) && FUNC5(s, len) < 0)
			break;
		s->s_buf[s->s_len++] = *str++;
	}
	if (len) {
		FUNC2(s, SBUF_OVERFLOWED);
		return (-1);
	}
	return (0);
}