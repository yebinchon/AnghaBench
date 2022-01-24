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

/* Variables and functions */
 int /*<<< orphan*/  INPUT ; 
 int /*<<< orphan*/  OUTPUT ; 
 int /*<<< orphan*/  PERIPH_RMT_MODULE ; 
 scalar_t__ RMT_SIG_IN0_IDX ; 
 scalar_t__ RMT_SIG_OUT0_IDX ; 
 int periph_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int pin, int channel, bool tx_not_rx) 
{
    if (!periph_enabled) {
        periph_enabled = true;
        FUNC0( PERIPH_RMT_MODULE );
    }
    if (tx_not_rx) {
        FUNC3(pin, OUTPUT);
        FUNC2(pin, RMT_SIG_OUT0_IDX + channel, 0, 0);
    } else {
        FUNC3(pin, INPUT);
        FUNC1(pin, RMT_SIG_IN0_IDX + channel, 0);

    }
}