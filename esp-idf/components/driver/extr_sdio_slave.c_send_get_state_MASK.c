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
typedef  int /*<<< orphan*/  send_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  send_state; } ;

/* Variables and functions */
 TYPE_1__ context ; 

__attribute__((used)) static inline send_state_t FUNC0(void)
{
    return context.send_state;
}