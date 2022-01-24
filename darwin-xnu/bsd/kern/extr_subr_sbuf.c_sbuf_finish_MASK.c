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
struct sbuf {char* s_buf; size_t s_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBUF_FINISHED ; 
 int /*<<< orphan*/  SBUF_OVERFLOWED ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct sbuf *s)
{
	FUNC2(s);
	FUNC3(s, 0);

	s->s_buf[s->s_len] = '\0';
	FUNC0(s, SBUF_OVERFLOWED);
	FUNC1(s, SBUF_FINISHED);
}