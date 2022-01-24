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
struct TYPE_4__ {int fshift; int length; scalar_t__* cnts; int* freqs; scalar_t__* symbols; } ;
typedef  TYPE_1__ PixelModel3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  uint16_t ; 
 int /*<<< orphan*/  uint8_t ; 

__attribute__((used)) static void FUNC2(PixelModel3 *m, int a)
{
    int b, len, d, e, g;

    b = 25 << m->fshift;
    len = m->length;
    m->cnts[a] += b;
    m->cnts[len] += b;
    if (a > 0 && m->cnts[a] > m->cnts[a - 1]) {
        FUNC0(uint16_t, m->cnts[a], m->cnts[a - 1]);
        d = m->freqs[2 * a];
        e = m->freqs[2 * a + 1];
        g = m->freqs[2 * (a - 1) + 1];
        m->freqs[2 * a] = m->freqs[2 * (a - 1)];
        m->freqs[2 * a + 1] = g;
        g = a - 1;
        m->freqs[2 * g] = d;
        m->freqs[2 * g + 1] = e;
        FUNC0(uint8_t, m->symbols[a], m->symbols[a - 1]);
    }

    if (m->cnts[len] + b > 4096)
        FUNC1(m);
}