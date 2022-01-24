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
struct TYPE_4__ {struct TYPE_4__* org_table; struct TYPE_4__* table; struct TYPE_4__* org_name; struct TYPE_4__* name; struct TYPE_4__* db; struct TYPE_4__* catalog; } ;
typedef  TYPE_1__ MYSQL_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(MYSQL_FIELD *field) {
	if (field->catalog) FUNC0(field->catalog);
	if (field->db) FUNC0(field->db);
	if (field->name) FUNC0(field->name);
	if (field->org_name) FUNC0(field->org_name);
	if (field->table) FUNC0(field->table);
	if (field->org_table) FUNC0(field->org_table);

	FUNC0(field);
}