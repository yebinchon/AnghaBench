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
typedef  int /*<<< orphan*/  ZSTD_dParameter ;
struct TYPE_3__ {int lowerBound; int upperBound; int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ ZSTD_bounds ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(ZSTD_dParameter dParam, int value)
{
    ZSTD_bounds const bounds = FUNC0(dParam);
    if (FUNC1(bounds.error)) return 0;
    if (value < bounds.lowerBound) return 0;
    if (value > bounds.upperBound) return 0;
    return 1;
}