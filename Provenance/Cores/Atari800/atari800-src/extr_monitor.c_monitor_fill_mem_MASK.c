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
typedef  int UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int*,int*) ; 

__attribute__((used)) static void FUNC2(void)
{
	UWORD addr1;
	UWORD addr2;
	UWORD hexval;
	if (FUNC1(&addr1, &addr2, &hexval)) {
		/* use int to avoid endless loop with addr2==0xffff */
		int a;
		for (a = addr1; a <= addr2; a++)
			FUNC0(a, (UBYTE) hexval);
	}
}