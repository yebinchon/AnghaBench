#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int should_free_lines; int width; TYPE_1__* plane; scalar_t__ is_ring; } ;
struct TYPE_5__ {int available_lines; scalar_t__* line; } ;
typedef  TYPE_2__ SwsSlice ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(SwsSlice *s, int size, int width)
{
    int i;
    int idx[2] = {3, 2};

    s->should_free_lines = 1;
    s->width = width;

    for (i = 0; i < 2; ++i) {
        int n = s->plane[i].available_lines;
        int j;
        int ii = idx[i];

        FUNC1(n == s->plane[ii].available_lines);
        for (j = 0; j < n; ++j) {
            // chroma plane line U and V are expected to be contiguous in memory
            // by mmx vertical scaler code
            s->plane[i].line[j] = FUNC2(size * 2 + 32);
            if (!s->plane[i].line[j]) {
                FUNC3(s);
                return FUNC0(ENOMEM);
            }
            s->plane[ii].line[j] = s->plane[i].line[j] + size + 16;
            if (s->is_ring) {
               s->plane[i].line[j+n] = s->plane[i].line[j];
               s->plane[ii].line[j+n] = s->plane[ii].line[j];
            }
        }
    }

    return 0;
}