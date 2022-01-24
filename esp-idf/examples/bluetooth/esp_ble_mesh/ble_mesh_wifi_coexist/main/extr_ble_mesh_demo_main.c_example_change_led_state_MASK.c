#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct _led_state {int /*<<< orphan*/  pin; } ;
struct TYPE_2__ {int /*<<< orphan*/  disable_fast_prov_timer; int /*<<< orphan*/  srv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE_FAST_PROV_START ; 
 int /*<<< orphan*/  DISABLE_FAST_PROV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ fast_prov_server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct _led_state* led_state ; 

__attribute__((used)) static void FUNC3(uint8_t onoff)
{
    struct _led_state *led = &led_state[1];

    FUNC0(led->pin, onoff);

    /* When the node receives the first Generic OnOff Get/Set/Set Unack message, it will
     * start the timer used to disable fast provisioning functionality.
     */
    if (!FUNC1(fast_prov_server.srv_flags, DISABLE_FAST_PROV_START)) {
        FUNC2(&fast_prov_server.disable_fast_prov_timer, DISABLE_FAST_PROV_TIMEOUT);
    }
}