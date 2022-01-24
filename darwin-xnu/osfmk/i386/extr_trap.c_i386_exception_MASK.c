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
typedef  int /*<<< orphan*/  mach_exception_subcode_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  mach_exception_code_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EXCEPTION_CODE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int) ; 

void
FUNC2(
	int	exc,
	mach_exception_code_t code,
	mach_exception_subcode_t subcode)
{
	mach_exception_data_type_t   codes[EXCEPTION_CODE_MAX];

	FUNC0("i386_exception: exc=%d code=0x%llx subcode=0x%llx\n",
							  exc, code, subcode);
	codes[0] = code;		/* new exception interface */
	codes[1] = subcode;
	FUNC1(exc, codes, 2);
	/*NOTREACHED*/
}