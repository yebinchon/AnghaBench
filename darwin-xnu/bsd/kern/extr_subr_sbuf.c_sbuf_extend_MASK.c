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
struct sbuf {int s_size; char* s_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  SBUF_DYNAMIC ; 
 scalar_t__ FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct sbuf *s, int addlen)
{
	char *newbuf;
	int newsize;

	if (!FUNC2(s))
		return (-1);

	newsize = FUNC6(s->s_size + addlen);
	newbuf = (char *)FUNC1(newsize);
	if (newbuf == NULL)
		return (-1);
	FUNC5(s->s_buf, newbuf, s->s_size);
	if (FUNC3(s))
		FUNC0(s->s_buf);
	else
		FUNC4(s, SBUF_DYNAMIC);
	s->s_buf = newbuf;
	s->s_size = newsize;
	return (0);
}