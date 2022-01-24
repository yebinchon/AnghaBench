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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * ff_ue_golomb_len ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC4(PutBitContext *pb, uint32_t i)
{
    FUNC0(i <= (UINT32_MAX - 1));

    if (i < 256)
        FUNC2(pb, ff_ue_golomb_len[i], i + 1);
    else {
        int e = FUNC1(i + 1);
        FUNC3(pb, 2 * e + 1, i + 1);
    }
}