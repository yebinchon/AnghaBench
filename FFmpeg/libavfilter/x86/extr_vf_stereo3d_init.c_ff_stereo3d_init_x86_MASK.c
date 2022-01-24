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
struct TYPE_3__ {int /*<<< orphan*/  anaglyph; } ;
typedef  TYPE_1__ Stereo3DDSPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  ff_anaglyph_sse4 ; 

void FUNC2(Stereo3DDSPContext *dsp)
{
    int cpu_flags = FUNC1();

    if (FUNC0(cpu_flags)) {
        dsp->anaglyph = ff_anaglyph_sse4;
    }
}