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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

__attribute__((used)) static inline void FUNC4(GetBitContext *gb, uint8_t *dst, int linesize)
{
    int i, j, v[2];

    switch (FUNC1(gb, 2)) {
    case 1:
        v[0] = FUNC1(gb, 8);
        for (j = 0; j < 4; j++)
            FUNC3(dst + j * linesize, v[0], 4);
        break;
    case 2:
        v[0] = FUNC1(gb, 8);
        v[1] = FUNC1(gb, 8);
        for (j = 2; j >= 0; j -= 2) {
            for (i = 0; i < 4; i++)
                dst[j * linesize + i] = v[FUNC2(gb)];
            for (i = 0; i < 4; i++)
                dst[(j + 1) * linesize + i] = v[FUNC2(gb)];
        }
        break;
    case 3:
        for (j = 0; j < 4; j += 2)
            for (i = 0; i < 4; i += 2)
                FUNC0(gb, dst + j * linesize + i, linesize);
    }
}