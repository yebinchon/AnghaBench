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
struct wps_rx_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wps_rx_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bqentry ; 
 int /*<<< orphan*/  s_wps_rxq ; 

__attribute__((used)) static void FUNC3(struct wps_rx_param *param)
{
    FUNC1();
    FUNC2(&s_wps_rxq,param, bqentry);
    FUNC0();
}