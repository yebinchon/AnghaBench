#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {int duty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ SIGMADELTA ; 

uint8_t FUNC2(uint8_t channel) //chan 0-7
{
    if(channel > 7) {
        return 0;
    }
    FUNC0();
    uint8_t duty = SIGMADELTA.channel[channel].duty + 128;
    FUNC1();
    return duty;
}