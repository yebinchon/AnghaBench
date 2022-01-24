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
struct TYPE_2__ {int /*<<< orphan*/  mb_var_sum_temp; int /*<<< orphan*/  mc_mb_var_sum_temp; int /*<<< orphan*/  scene_change_score; } ;
typedef  int /*<<< orphan*/  MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ me ; 

__attribute__((used)) static void FUNC1(MpegEncContext *dst, MpegEncContext *src){
    FUNC0(me.scene_change_score);
    FUNC0(me.mc_mb_var_sum_temp);
    FUNC0(me.mb_var_sum_temp);
}