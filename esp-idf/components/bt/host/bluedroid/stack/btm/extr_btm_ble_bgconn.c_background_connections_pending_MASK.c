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
 scalar_t__ background_connections ; 
 int /*<<< orphan*/  background_connections_pending_cb ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC1(void)
{
    bool pending_connections = false;
    if (background_connections) {
        FUNC0(background_connections, background_connections_pending_cb, &pending_connections);
    }
    return pending_connections;
}