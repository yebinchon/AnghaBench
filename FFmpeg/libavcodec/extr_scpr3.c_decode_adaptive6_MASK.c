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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int size; int* freqs; int* symbols; int fshift; int length; } ;
typedef  TYPE_1__ PixelModel3 ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(PixelModel3 *m, uint32_t code, uint32_t *value,
                            uint16_t *a, uint16_t *b)
{
    int c, d, e, f, g, q;

    for (c = 0, d = 0, e = 0, f = 0, g = 0, q = m->size; g < q; g++) {
        uint32_t p = m->freqs[2 * g + 1];

        if (p <= code) {
            uint32_t k = m->freqs[2 * g];

            if (p + k > code) {
                *value = m->symbols[g];
                *a = k;
                *b = p;
                FUNC2(m, g);
                return 1;
            }

            if (p >= d) {
                c = k;
                d = p;
                e = m->symbols[g];
            }
        }
    }

    g = 1 << m->fshift;
    q = f = 0;

    if (c > 0) {
        f = (code - (d + c)) >> m->fshift;
        q = f + e + 1;
        f = d + c + (f << m->fshift);
    } else {
        q = code >> m->fshift;
        f = q << m->fshift;
    }

    *a = g;
    *b = f;
    *value = q;

    c = FUNC0(m, q, g, f);
    if (c < 0) {
        if (m->length == 64)
            return 0;
        FUNC1(m);
        c = FUNC0(m, q, g, f);
    }

    FUNC2(m, c);
    return 1;
}