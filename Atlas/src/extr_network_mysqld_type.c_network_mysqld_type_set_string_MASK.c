#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* set_string ) (TYPE_1__*,char const*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ network_mysqld_type_t ;
typedef  int /*<<< orphan*/  gsize ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 

int FUNC1(network_mysqld_type_t *type, const char *s, gsize s_len) {
	if (NULL == type->set_string) return -1;

	return type->set_string(type, s, s_len);
}