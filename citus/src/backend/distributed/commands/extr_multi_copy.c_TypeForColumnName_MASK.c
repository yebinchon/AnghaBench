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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_3__ {int /*<<< orphan*/  atttypid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static Oid
FUNC4(Oid relationId, TupleDesc tupleDescriptor, char *columnName)
{
	AttrNumber destAttrNumber = FUNC3(relationId, columnName);
	Form_pg_attribute attr = NULL;

	if (destAttrNumber == InvalidAttrNumber)
	{
		FUNC1(ERROR, (FUNC2("invalid attr? %s", columnName)));
	}

	attr = FUNC0(tupleDescriptor, destAttrNumber - 1);
	return attr->atttypid;
}