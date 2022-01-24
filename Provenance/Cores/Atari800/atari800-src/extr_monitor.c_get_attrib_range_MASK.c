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

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(UWORD *addr1, UWORD *addr2)
{
	if (FUNC0(addr1, addr2) && *addr1 <= *addr2) {
#ifdef PAGED_ATTRIB
		if ((*addr1 & 0xff) != 0 || (*addr2 & 0xff) != 0xff) {
			printf("This is PAGED_ATTRIB version of Atari800.\n"
			       "You can only change attributes of full memory pages.\n");
			return FALSE;
		}
#endif
		return TRUE;
	}
	FUNC1("Missing or bad argument!\n");
	return FALSE;
}