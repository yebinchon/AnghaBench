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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_active_pcbs ; 
 int /*<<< orphan*/  tcp_bound_pcbs ; 
 int /*<<< orphan*/  tcp_tw_pcbs ; 

void FUNC2(void)
{
    FUNC0("-------------active pcbs------------");
    FUNC1(tcp_active_pcbs);
    FUNC0("-------------bound pcbs-------------");
    FUNC1(tcp_bound_pcbs);
    FUNC0("-------------tw     pcbs------------");
    FUNC1(tcp_tw_pcbs);
}