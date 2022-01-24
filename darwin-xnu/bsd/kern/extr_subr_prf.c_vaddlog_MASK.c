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
typedef  int /*<<< orphan*/  va_list ;
struct putchar_args {int /*<<< orphan*/ * tty; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TOLOGLOCKED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct putchar_args*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  putchar_asl ; 

int
FUNC4(const char *fmt, va_list ap)
{
	struct putchar_args pca = {
		.flags = TOLOGLOCKED,
		.tty = NULL,
	};

	FUNC1();
	FUNC0(fmt, ap, putchar_asl, &pca, 10, TRUE);
	FUNC2();
	FUNC3(NULL);

	return (0);
}