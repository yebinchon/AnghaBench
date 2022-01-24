#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int int16_t ;
struct TYPE_4__ {size_t* permutated; } ;
struct TYPE_5__ {int* qtable; TYPE_1__ scantable; } ;
typedef  TYPE_2__ TgqContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(TgqContext *s, int16_t block[64], GetBitContext *gb)
{
    uint8_t *perm = s->scantable.permutated;
    int i, j, value;
    block[0] = FUNC1(gb, 8) * s->qtable[0];
    for (i = 1; i < 64;) {
        switch (FUNC2(gb, 3)) {
        case 4:
            block[perm[i++]] = 0;
        case 0:
            block[perm[i++]] = 0;
            FUNC3(gb, 3);
            break;
        case 5:
        case 1:
            FUNC3(gb, 2);
            value = FUNC0(gb, 6);
            for (j = 0; j < value; j++)
                block[perm[i++]] = 0;
            break;
        case 6:
            FUNC3(gb, 3);
            block[perm[i]] = -s->qtable[perm[i]];
            i++;
            break;
        case 2:
            FUNC3(gb, 3);
            block[perm[i]] = s->qtable[perm[i]];
            i++;
            break;
        case 7: // 111b
        case 3: // 011b
            FUNC3(gb, 2);
            if (FUNC2(gb, 6) == 0x3F) {
                FUNC3(gb, 6);
                block[perm[i]] = FUNC1(gb, 8) * s->qtable[perm[i]];
            } else {
                block[perm[i]] = FUNC1(gb, 6) * s->qtable[perm[i]];
            }
            i++;
            break;
        }
    }
    block[0] += 128 << 4;
}