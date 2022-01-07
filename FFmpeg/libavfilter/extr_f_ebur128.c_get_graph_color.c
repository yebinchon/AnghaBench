
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int y_opt_max; int y_opt_min; int y_zero_lu; scalar_t__* y_line_ref; } ;
typedef TYPE_1__ EBUR128Context ;


 int const* graph_colors ;

__attribute__((used)) static const uint8_t *get_graph_color(const EBUR128Context *ebur128, int v, int y)
{
    const int above_opt_max = y > ebur128->y_opt_max;
    const int below_opt_min = y < ebur128->y_opt_min;
    const int reached = y >= v;
    const int line = ebur128->y_line_ref[y] || y == ebur128->y_zero_lu;
    const int colorid = 8*below_opt_min+ 4*line + 2*reached + above_opt_max;
    return graph_colors + 3*colorid;
}
