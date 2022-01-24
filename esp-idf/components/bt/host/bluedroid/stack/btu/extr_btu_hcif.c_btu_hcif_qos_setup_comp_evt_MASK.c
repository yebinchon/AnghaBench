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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_3__ {int /*<<< orphan*/  delay_variation; int /*<<< orphan*/  latency; int /*<<< orphan*/  peak_bandwidth; int /*<<< orphan*/  token_rate; int /*<<< orphan*/  service_type; int /*<<< orphan*/  qos_flags; } ;
typedef  TYPE_1__ FLOW_SPEC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4 (UINT8 *p)
{
    UINT8 status;
    UINT16 handle;
    FLOW_SPEC flow;

    FUNC2 (status, p);
    FUNC0 (handle, p);
    FUNC2 (flow.qos_flags, p);
    FUNC2 (flow.service_type, p);
    FUNC1 (flow.token_rate, p);
    FUNC1 (flow.peak_bandwidth, p);
    FUNC1 (flow.latency, p);
    FUNC1 (flow.delay_variation, p);

    FUNC3(status, handle, &flow);
}