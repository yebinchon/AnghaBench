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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 

__attribute__((used)) static int FUNC2(GetBitContext *gb, uint8_t *out, int num_flags)
{
    int i, result;

    FUNC1(out, 0, num_flags);

    result = FUNC0(gb);
    if (result) {
        if (FUNC0(gb))
            for (i = 0; i < num_flags; i++)
                out[i] = FUNC0(gb);
        else
            FUNC1(out, 1, num_flags);
    }

    return result;
}