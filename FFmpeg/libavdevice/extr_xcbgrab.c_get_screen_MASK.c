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
typedef  int /*<<< orphan*/  xcb_setup_t ;
typedef  int /*<<< orphan*/  xcb_screen_t ;
struct TYPE_4__ {scalar_t__ rem; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ xcb_screen_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static xcb_screen_t *FUNC2(const xcb_setup_t *setup, int screen_num)
{
    xcb_screen_iterator_t it = FUNC1(setup);
    xcb_screen_t *screen     = NULL;

    for (; it.rem > 0; FUNC0 (&it)) {
        if (!screen_num) {
            screen = it.data;
            break;
        }

        screen_num--;
    }

    return screen;
}