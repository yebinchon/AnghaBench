
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int window; TYPE_1__* players; } ;
struct TYPE_5__ {scalar_t__ rx; double ry; } ;
struct TYPE_4__ {TYPE_2__ state; } ;
typedef TYPE_2__ State ;


 int GLFW_CURSOR ;
 scalar_t__ GLFW_CURSOR_DISABLED ;
 scalar_t__ INVERT_MOUSE ;
 double MAX (double,scalar_t__) ;
 double MIN (double,scalar_t__) ;
 scalar_t__ RADIANS (int) ;
 TYPE_3__* g ;
 int glfwGetCursorPos (int ,double*,double*) ;
 scalar_t__ glfwGetInputMode (int ,int ) ;

void handle_mouse_input() {
    int exclusive =
        glfwGetInputMode(g->window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED;
    static double px = 0;
    static double py = 0;
    State *s = &g->players->state;
    if (exclusive && (px || py)) {
        double mx, my;
        glfwGetCursorPos(g->window, &mx, &my);
        float m = 0.0025;
        s->rx += (mx - px) * m;
        if (INVERT_MOUSE) {
            s->ry += (my - py) * m;
        }
        else {
            s->ry -= (my - py) * m;
        }
        if (s->rx < 0) {
            s->rx += RADIANS(360);
        }
        if (s->rx >= RADIANS(360)){
            s->rx -= RADIANS(360);
        }
        s->ry = MAX(s->ry, -RADIANS(90));
        s->ry = MIN(s->ry, RADIANS(90));
        px = mx;
        py = my;
    }
    else {
        glfwGetCursorPos(g->window, &px, &py);
    }
}
