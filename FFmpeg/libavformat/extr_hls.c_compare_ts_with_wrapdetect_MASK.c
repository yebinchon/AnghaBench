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
struct playlist {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPEG_TIME_BASE_Q ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct playlist*) ; 

__attribute__((used)) static int FUNC3(int64_t ts_a, struct playlist *pls_a,
                                      int64_t ts_b, struct playlist *pls_b)
{
    int64_t scaled_ts_a = FUNC1(ts_a, FUNC2(pls_a), MPEG_TIME_BASE_Q);
    int64_t scaled_ts_b = FUNC1(ts_b, FUNC2(pls_b), MPEG_TIME_BASE_Q);

    return FUNC0(scaled_ts_a, scaled_ts_b, 1LL << 33);
}