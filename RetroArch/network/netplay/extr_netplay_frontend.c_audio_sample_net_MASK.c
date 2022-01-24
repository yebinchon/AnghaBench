#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* sample_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ cbs; int /*<<< orphan*/  stall; } ;
typedef  TYPE_2__ netplay_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 TYPE_2__* netplay_data ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(int16_t left, int16_t right)
{
   netplay_t *netplay = netplay_data;
   if (!FUNC0(netplay) && !netplay->stall)
      netplay->cbs.sample_cb(left, right);
}