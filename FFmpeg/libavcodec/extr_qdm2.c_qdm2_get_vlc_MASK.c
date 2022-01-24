#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* vlc_stage3_values ; 

__attribute__((used)) static int FUNC3(GetBitContext *gb, const VLC *vlc, int flag, int depth)
{
    int value;

    value = FUNC2(gb, vlc->table, vlc->bits, depth);

    /* stage-2, 3 bits exponent escape sequence */
    if (value-- == 0)
        value = FUNC1(gb, FUNC1(gb, 3) + 1);

    /* stage-3, optional */
    if (flag) {
        int tmp;

        if (value >= 60) {
            FUNC0(NULL, AV_LOG_ERROR, "value %d in qdm2_get_vlc too large\n", value);
            return 0;
        }

        tmp= vlc_stage3_values[value];

        if ((value & ~3) > 0)
            tmp += FUNC1(gb, (value >> 2));
        value = tmp;
    }

    return value;
}