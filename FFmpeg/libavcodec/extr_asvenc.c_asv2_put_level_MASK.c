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
struct TYPE_3__ {int /*<<< orphan*/  avctx; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ ASV1Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ ** ff_asv2_level_tab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(ASV1Context *a, PutBitContext *pb, int level)
{
    unsigned int index = level + 31;

    if (index <= 62) {
        FUNC3(pb, ff_asv2_level_tab[index][1], ff_asv2_level_tab[index][0]);
    } else {
        FUNC3(pb, ff_asv2_level_tab[31][1], ff_asv2_level_tab[31][0]);
        if (level < -128 || level > 127) {
            FUNC2(a->avctx, AV_LOG_WARNING, "Clipping level %d, increase qscale\n", level);
            level = FUNC1(level);
        }
        FUNC0(pb, 8, level & 0xFF);
    }
}