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
struct TYPE_3__ {unsigned int phase; unsigned int freq; unsigned int srate; } ;
typedef  TYPE_1__ SimpleLFO ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(SimpleLFO *lfo, unsigned count)
{
    lfo->phase = FUNC0(lfo->phase + count * lfo->freq / lfo->srate);
    if (lfo->phase >= 1)
        lfo->phase = FUNC1(lfo->phase, 1);
}