#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ show_mode; scalar_t__ video_st; scalar_t__ audio_st; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ VideoState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SHOW_MODE_VIDEO ; 
 int /*<<< orphan*/  renderer ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(VideoState *is)
{
    if (!is->width)
        FUNC5(is);

    FUNC2(renderer, 0, 0, 0, 255);
    FUNC0(renderer);
    if (is->audio_st && is->show_mode != SHOW_MODE_VIDEO)
        FUNC3(is);
    else if (is->video_st)
        FUNC4(is);
    FUNC1(renderer);
}