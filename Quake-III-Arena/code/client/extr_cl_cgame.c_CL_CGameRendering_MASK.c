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
typedef  int /*<<< orphan*/  stereoFrame_t ;
struct TYPE_4__ {int /*<<< orphan*/  serverTime; } ;
struct TYPE_3__ {int /*<<< orphan*/  demoplaying; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_DRAW_ACTIVE_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cgvm ; 
 TYPE_2__ cl ; 
 TYPE_1__ clc ; 

void FUNC2( stereoFrame_t stereo ) {
	FUNC0( cgvm, CG_DRAW_ACTIVE_FRAME, cl.serverTime, stereo, clc.demoplaying );
	FUNC1( 0 );
}