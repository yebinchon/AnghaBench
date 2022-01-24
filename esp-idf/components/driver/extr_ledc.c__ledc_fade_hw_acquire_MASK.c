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
typedef  size_t ledc_mode_t ;
struct TYPE_3__ {int /*<<< orphan*/  ledc_fade_sem; } ;
typedef  TYPE_1__ ledc_fade_t ;
typedef  size_t ledc_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  LEDC_INTR_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 TYPE_1__*** s_ledc_fade_rec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ledc_mode_t mode, ledc_channel_t channel)
{
    ledc_fade_t* fade = s_ledc_fade_rec[mode][channel];
    if (fade) {
        FUNC1(fade->ledc_fade_sem, portMAX_DELAY);
        FUNC0(mode, channel, LEDC_INTR_DISABLE);
    }
}