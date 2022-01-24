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
struct TYPE_3__ {int /*<<< orphan*/  timefilter; int /*<<< orphan*/  ports; int /*<<< orphan*/  filled_pkts; int /*<<< orphan*/  new_pkts; int /*<<< orphan*/  packet_count; scalar_t__ client; scalar_t__ activated; } ;
typedef  TYPE_1__ JackData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(JackData *self)
{
    if (self->client) {
        if (self->activated)
            FUNC4(self->client);
        FUNC3(self->client);
    }
    FUNC5(&self->packet_count);
    FUNC2(&self->new_pkts);
    FUNC2(&self->filled_pkts);
    FUNC0(&self->ports);
    FUNC1(self->timefilter);
}