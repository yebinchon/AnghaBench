#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  debug_matches; } ;
struct TYPE_5__ {int /*<<< orphan*/  matches; } ;
typedef  TYPE_1__ DebugMatches ;
typedef  TYPE_2__ AbsoluteFrameMotion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(AbsoluteFrameMotion *afm) {
    DebugMatches dm;

    if (!afm->debug_matches) {
        return;
    }

    while (FUNC2(afm->debug_matches) > 0) {
        FUNC1(
            afm->debug_matches,
            &dm,
            sizeof(DebugMatches),
            NULL
        );

        FUNC3(&dm.matches);
    }

    FUNC0(&afm->debug_matches);
}