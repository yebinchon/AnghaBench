#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
struct TYPE_6__ {int /*<<< orphan*/  is_unsigned; int /*<<< orphan*/  i; } ;
typedef  TYPE_2__ network_mysqld_type_int_t ;
typedef  int /*<<< orphan*/  guint64 ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 

__attribute__((used)) static int FUNC1(network_mysqld_type_t *type, guint64 i, gboolean is_unsigned) {
	network_mysqld_type_int_t *value;

	if (NULL == type->data) {
		type->data = FUNC0();
	}	
	value = type->data;

	value->i = i;
	value->is_unsigned = is_unsigned;

	return 0;
}