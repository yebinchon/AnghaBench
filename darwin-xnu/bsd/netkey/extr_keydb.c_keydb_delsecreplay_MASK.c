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
struct secreplay {struct secreplay* bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SECA ; 
 int /*<<< orphan*/  FUNC0 (struct secreplay*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct secreplay *p)
{
	if (p->bitmap)
		FUNC0(p->bitmap, M_SECA);
	FUNC0(p, M_SECA);
}