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
struct netbuf {int /*<<< orphan*/ * ptr; int /*<<< orphan*/ * p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMP_NETBUF ; 
 struct netbuf* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct netbuf* FUNC1()
{
	struct netbuf *buf = NULL;

	buf = FUNC0(MEMP_NETBUF);
	if(buf) {
		buf->p = NULL;
		buf->ptr = NULL;
	}
	return buf;
}