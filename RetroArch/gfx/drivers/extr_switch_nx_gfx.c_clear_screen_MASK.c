#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  full_height; int /*<<< orphan*/  full_width; } ;
struct TYPE_5__ {int /*<<< orphan*/  fb; TYPE_1__ vp; int /*<<< orphan*/  win; } ;
typedef  TYPE_2__ switch_video_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(switch_video_t *sw)
{
    FUNC3(sw->win, sw->vp.full_width, sw->vp.full_height);

    uint32_t stride;

    uint32_t *out_buffer = (uint32_t*)FUNC0(&sw->fb, &stride);

    FUNC2(out_buffer, 0, stride * 720);

    FUNC1(&sw->fb);
}