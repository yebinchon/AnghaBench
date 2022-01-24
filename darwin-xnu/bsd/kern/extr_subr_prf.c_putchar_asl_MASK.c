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
struct putchar_args {int flags; } ;

/* Variables and functions */
 int TOLOGLOCKED ; 
 int /*<<< orphan*/  aslbufp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 

__attribute__((used)) static void
FUNC2(int c, void *arg)
{
	struct putchar_args *pca = arg;

	if ((pca->flags & TOLOGLOCKED) && c != '\0' && c != '\r' && c != 0177)
		FUNC0(aslbufp, c);
	FUNC1(c, arg);
}