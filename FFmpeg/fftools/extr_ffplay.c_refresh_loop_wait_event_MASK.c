#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {scalar_t__ show_mode; scalar_t__ force_refresh; int /*<<< orphan*/  paused; } ;
typedef  TYPE_1__ VideoState ;
typedef  int /*<<< orphan*/  SDL_Event ;

/* Variables and functions */
 scalar_t__ CURSOR_HIDE_DELAY ; 
 double REFRESH_RATE ; 
 int /*<<< orphan*/  SDL_FIRSTEVENT ; 
 int /*<<< orphan*/  SDL_GETEVENT ; 
 int /*<<< orphan*/  SDL_LASTEVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHOW_MODE_NONE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int cursor_hidden ; 
 scalar_t__ cursor_last_shown ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,double*) ; 

__attribute__((used)) static void FUNC6(VideoState *is, SDL_Event *event) {
    double remaining_time = 0.0;
    FUNC1();
    while (!FUNC0(event, 1, SDL_GETEVENT, SDL_FIRSTEVENT, SDL_LASTEVENT)) {
        if (!cursor_hidden && FUNC3() - cursor_last_shown > CURSOR_HIDE_DELAY) {
            FUNC2(0);
            cursor_hidden = 1;
        }
        if (remaining_time > 0.0)
            FUNC4((int64_t)(remaining_time * 1000000.0));
        remaining_time = REFRESH_RATE;
        if (is->show_mode != SHOW_MODE_NONE && (!is->paused || is->force_refresh))
            FUNC5(is, &remaining_time);
        FUNC1();
    }
}