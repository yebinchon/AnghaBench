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
typedef  int /*<<< orphan*/  network_mysqld_type_time_t ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
typedef  int /*<<< orphan*/  network_mysqld_type_date_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static int FUNC2(network_mysqld_type_t *type, network_mysqld_type_time_t *src) {
	network_mysqld_type_date_t *dst;

	if (NULL == type->data) {
		type->data = FUNC1();
	}
	dst = type->data;

	FUNC0(dst, src, sizeof(*src));

	return 0;
}