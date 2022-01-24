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
struct TYPE_3__ {int present; int /*<<< orphan*/  anticlockwise_rotation; void* vflip; void* hflip; } ;
typedef  TYPE_1__ HEVCSEIDisplayOrientation ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(HEVCSEIDisplayOrientation *s, GetBitContext *gb)
{
    s->present = !FUNC1(gb);

    if (s->present) {
        s->hflip = FUNC1(gb);     // hor_flip
        s->vflip = FUNC1(gb);     // ver_flip

        s->anticlockwise_rotation = FUNC0(gb, 16);
        FUNC2(gb);     // display_orientation_persistence_flag
    }

    return 0;
}