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
typedef  int /*<<< orphan*/  UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  StateFile ; 
 scalar_t__ Z_OK ; 
 scalar_t__ nFileError ; 

void FUNC2(UWORD *data, int num)
{
	if (!StateFile || nFileError != Z_OK)
		return;

	while (num > 0) {
		UBYTE byte1, byte2;

		if (FUNC0(StateFile, &byte1, 1) == 0) {
			FUNC1();
			break;
		}

		if (FUNC0(StateFile, &byte2, 1) == 0) {
			FUNC1();
			break;
		}

		*data++ = (byte2 << 8) | byte1;
		num--;
	}
}