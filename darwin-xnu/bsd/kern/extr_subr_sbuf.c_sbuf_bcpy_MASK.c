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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sbuf*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 

int
FUNC4(struct sbuf *s, const void *buf, size_t len)
{
	FUNC0(s);
	FUNC1(s, 0);

	FUNC3(s);
	return (FUNC2(s, buf, len));
}