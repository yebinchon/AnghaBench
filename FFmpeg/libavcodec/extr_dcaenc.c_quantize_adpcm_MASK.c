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
struct TYPE_4__ {int fullband_channels; scalar_t__** prediction_mode; } ;
typedef  TYPE_1__ DCAEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC1(DCAEncContext *c)
{
    int band, ch;

    for (ch = 0; ch < c->fullband_channels; ch++)
        for (band = 0; band < 32; band++)
            if (c->prediction_mode[ch][band] >= 0)
                FUNC0(c, ch, band);
}