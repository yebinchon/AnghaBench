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
struct TYPE_3__ {double* data; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
typedef  double network_mysqld_type_double_t ;

/* Variables and functions */
 double* FUNC0 () ; 

__attribute__((used)) static int FUNC1(network_mysqld_type_t *type, double d) {
	network_mysqld_type_double_t *value;

	if (NULL == type->data) {
		type->data = FUNC0();
	}

	value = type->data;
	*value = d;

	return 0;
}