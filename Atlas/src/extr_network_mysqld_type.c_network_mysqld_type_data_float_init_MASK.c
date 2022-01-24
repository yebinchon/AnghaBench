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
struct TYPE_3__ {int type; int /*<<< orphan*/  set_double; int /*<<< orphan*/  get_double; int /*<<< orphan*/  free_data; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
typedef  enum enum_field_types { ____Placeholder_enum_field_types } enum_field_types ;

/* Variables and functions */
 int /*<<< orphan*/  network_mysqld_type_data_float_free ; 
 int /*<<< orphan*/  network_mysqld_type_data_float_get_double ; 
 int /*<<< orphan*/  network_mysqld_type_data_float_set_double ; 

__attribute__((used)) static void FUNC0(network_mysqld_type_t *type, enum enum_field_types field_type) {
	type->type	= field_type;
	type->free_data = network_mysqld_type_data_float_free;
	type->get_double = network_mysqld_type_data_float_get_double;
	type->set_double = network_mysqld_type_data_float_set_double;
}