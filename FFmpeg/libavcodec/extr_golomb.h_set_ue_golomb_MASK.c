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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int* ff_ue_golomb_len ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC3(PutBitContext *pb, int i)
{
    FUNC0(i >= 0);
    FUNC0(i <= 0xFFFE);

    if (i < 256)
        FUNC2(pb, ff_ue_golomb_len[i], i + 1);
    else {
        int e = FUNC1(i + 1);
        FUNC2(pb, 2 * e + 1, i + 1);
    }
}