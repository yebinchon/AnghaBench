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
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC3(PutBitContext *pb, int i, int k, int limit,
                                 int esc_len)
{
    int e;

    FUNC0(i >= 0);

    e = i >> k;
    if (e < limit)
        FUNC2(pb, e + k + 1, (1 << k) + FUNC1(i, k));
    else
        FUNC2(pb, limit + esc_len, i - limit + 1);
}