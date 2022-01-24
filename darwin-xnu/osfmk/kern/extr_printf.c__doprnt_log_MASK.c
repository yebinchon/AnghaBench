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

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (char),int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dummy_putc ; 

void 
FUNC1(
	const char	*fmt,
	va_list			*argp,
						/* character output routine */
	void			(*putc)(char),
	int			radix)		/* default radix - for '%r' */
{
    FUNC0(fmt, *argp, dummy_putc, putc, radix, TRUE);
}