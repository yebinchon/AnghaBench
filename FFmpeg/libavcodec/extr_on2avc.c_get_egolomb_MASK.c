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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(GetBitContext *gb)
{
    int v = 4;

    while (FUNC1(gb)) {
        v++;
        if (v > 30) {
            FUNC0(NULL, AV_LOG_WARNING, "Too large golomb code in get_egolomb.\n");
            v = 30;
            break;
        }
    }

    return (1 << v) + FUNC2(gb, v);
}