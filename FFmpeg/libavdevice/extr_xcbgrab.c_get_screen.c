
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_setup_t ;
typedef int xcb_screen_t ;
struct TYPE_4__ {scalar_t__ rem; int * data; } ;
typedef TYPE_1__ xcb_screen_iterator_t ;


 int xcb_screen_next (TYPE_1__*) ;
 TYPE_1__ xcb_setup_roots_iterator (int const*) ;

__attribute__((used)) static xcb_screen_t *get_screen(const xcb_setup_t *setup, int screen_num)
{
    xcb_screen_iterator_t it = xcb_setup_roots_iterator(setup);
    xcb_screen_t *screen = ((void*)0);

    for (; it.rem > 0; xcb_screen_next (&it)) {
        if (!screen_num) {
            screen = it.data;
            break;
        }

        screen_num--;
    }

    return screen;
}
