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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/ ** ff_asv_level_tab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC2(PutBitContext *pb, int level)
{
    unsigned int index = level + 3;

    if (index <= 6) {
        FUNC0(pb, ff_asv_level_tab[index][1], ff_asv_level_tab[index][0]);
    } else {
        FUNC0(pb, ff_asv_level_tab[3][1], ff_asv_level_tab[3][0]);
        FUNC1(pb, 8, level);
    }
}