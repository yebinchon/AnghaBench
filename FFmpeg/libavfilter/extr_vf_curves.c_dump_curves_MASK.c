#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  double const uint16_t ;
struct keypoint {struct keypoint* next; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (char const* const*) ; 
 int NB_COMP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(const char *fname, uint16_t *graph[NB_COMP + 1],
                       struct keypoint *comp_points[NB_COMP + 1],
                       int lut_size)
{
    int i;
    AVBPrint buf;
    const double scale = 1. / (lut_size - 1);
    static const char * const colors[] = { "red", "green", "blue", "#404040", };
    FILE *f = FUNC7(fname, "w");

    FUNC2(FUNC1(colors) == NB_COMP + 1);

    if (!f) {
        int ret = FUNC0(errno);
        FUNC8(NULL, AV_LOG_ERROR, "Cannot open file '%s' for writing: %s\n",
               fname, FUNC6(ret));
        return ret;
    }

    FUNC4(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    FUNC5(&buf, "set xtics 0.1\n");
    FUNC5(&buf, "set ytics 0.1\n");
    FUNC5(&buf, "set size square\n");
    FUNC5(&buf, "set grid\n");

    for (i = 0; i < FUNC1(colors); i++) {
        FUNC5(&buf, "%s'-' using 1:2 with lines lc '%s' title ''",
                   i ? ", " : "plot ", colors[i]);
        if (comp_points[i])
            FUNC5(&buf, ", '-' using 1:2 with points pointtype 3 lc '%s' title ''",
                    colors[i]);
    }
    FUNC5(&buf, "\n");

    for (i = 0; i < FUNC1(colors); i++) {
        int x;

        /* plot generated values */
        for (x = 0; x < lut_size; x++)
            FUNC5(&buf, "%f %f\n", x * scale, graph[i][x] * scale);
        FUNC5(&buf, "e\n");

        /* plot user knots */
        if (comp_points[i]) {
            const struct keypoint *point = comp_points[i];

            while (point) {
                FUNC5(&buf, "%f %f\n", point->x, point->y);
                point = point->next;
            }
            FUNC5(&buf, "e\n");
        }
    }

    FUNC10(buf.str, 1, buf.len, f);
    FUNC9(f);
    FUNC3(&buf, NULL);
    return 0;
}