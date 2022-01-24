#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* raw_pwds; TYPE_3__* raw_ips; struct TYPE_5__* default_file; int /*<<< orphan*/  global_wrr; int /*<<< orphan*/  backends_mutex; TYPE_3__* backends; } ;
typedef  TYPE_1__ network_backends_t ;
typedef  int /*<<< orphan*/  network_backend_t ;
typedef  size_t gsize ;
struct TYPE_6__ {size_t len; int /*<<< orphan*/ ** pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(network_backends_t *bs) {
	gsize i;

	if (!bs) return;

	FUNC2(bs->backends_mutex);	/*remove lock*/
	for (i = 0; i < bs->backends->len; i++) {
		network_backend_t *backend = bs->backends->pdata[i];
		
		FUNC6(backend);
	}
	FUNC3(bs->backends_mutex);	/*remove lock*/

	FUNC4(bs->backends, TRUE);
	FUNC1(bs->backends_mutex);	/*remove lock*/

	FUNC5(bs->global_wrr);
	FUNC0(bs->default_file);

	FUNC4(bs->raw_ips, TRUE);
	FUNC4(bs->raw_pwds, TRUE);

	FUNC0(bs);
}