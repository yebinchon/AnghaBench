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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC3(PutBitContext *pb, int i, int k,
                                        int limit, int esc_len)
{
    int e;

    FUNC0(i >= 0);

    e = (i >> k) + 1;
    if (e < limit) {
        while (e > 31) {
            FUNC1(pb, 31, 0);
            e -= 31;
        }
        FUNC1(pb, e, 1);
        if (k)
            FUNC2(pb, k, i);
    } else {
        while (limit > 31) {
            FUNC1(pb, 31, 0);
            limit -= 31;
        }
        FUNC1(pb, limit, 1);
        FUNC1(pb, esc_len, i - 1);
    }
}