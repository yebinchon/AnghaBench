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
typedef  int /*<<< orphan*/  network_connection_pool ;
struct TYPE_3__ {int /*<<< orphan*/  pools; } ;
typedef  TYPE_1__ network_backend_t ;
typedef  int /*<<< orphan*/  guint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tls_index ; 

network_connection_pool* FUNC3(network_backend_t* backend) {
	guint index = FUNC0(FUNC1(&tls_index));
	return FUNC2(backend->pools, index);
}