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
struct TYPE_3__ {int width; int height; } ;
typedef  TYPE_1__ VideoState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_WINDOW_FULLSCREEN_DESKTOP ; 
 int default_height ; 
 int default_width ; 
 scalar_t__ input_filename ; 
 scalar_t__ is_full_screen ; 
 int screen_height ; 
 int /*<<< orphan*/  screen_left ; 
 int /*<<< orphan*/  screen_top ; 
 int screen_width ; 
 int /*<<< orphan*/  window ; 
 scalar_t__ window_title ; 

__attribute__((used)) static int FUNC5(VideoState *is)
{
    int w,h;

    w = screen_width ? screen_width : default_width;
    h = screen_height ? screen_height : default_height;

    if (!window_title)
        window_title = input_filename;
    FUNC3(window, window_title);

    FUNC2(window, w, h);
    FUNC1(window, screen_left, screen_top);
    if (is_full_screen)
        FUNC0(window, SDL_WINDOW_FULLSCREEN_DESKTOP);
    FUNC4(window);

    is->width  = w;
    is->height = h;

    return 0;
}