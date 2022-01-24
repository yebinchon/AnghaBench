#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct G722Band {int log_factor; int /*<<< orphan*/  scale_factor; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct G722Band*,int const) ; 
 scalar_t__* high_log_factor_step ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct G722Band *band, const int dhigh,
                                  const int ihigh)
{
    FUNC1(band, dhigh);

    // quantizer adaptation
    band->log_factor   = FUNC0((band->log_factor * 127 >> 7) +
                                 high_log_factor_step[ihigh&1], 0, 22528);
    band->scale_factor = FUNC2(band->log_factor - (10 << 11));
}