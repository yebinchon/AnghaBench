#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
#define  MYSQL_TYPE_BIT 146 
#define  MYSQL_TYPE_BLOB 145 
#define  MYSQL_TYPE_DATE 144 
#define  MYSQL_TYPE_DATETIME 143 
#define  MYSQL_TYPE_DOUBLE 142 
#define  MYSQL_TYPE_FLOAT 141 
#define  MYSQL_TYPE_INT24 140 
#define  MYSQL_TYPE_LONG 139 
#define  MYSQL_TYPE_LONGLONG 138 
#define  MYSQL_TYPE_LONG_BLOB 137 
#define  MYSQL_TYPE_MEDIUM_BLOB 136 
#define  MYSQL_TYPE_NEWDECIMAL 135 
#define  MYSQL_TYPE_SHORT 134 
#define  MYSQL_TYPE_STRING 133 
#define  MYSQL_TYPE_TIME 132 
#define  MYSQL_TYPE_TIMESTAMP 131 
#define  MYSQL_TYPE_TINY 130 
#define  MYSQL_TYPE_TINY_BLOB 129 
#define  MYSQL_TYPE_VAR_STRING 128 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC6(GString *packet, network_mysqld_type_t *type) {
	switch (type->type) {
	case MYSQL_TYPE_TINY:
	case MYSQL_TYPE_SHORT:
	case MYSQL_TYPE_LONG:
	case MYSQL_TYPE_INT24:
	case MYSQL_TYPE_LONGLONG:
		return FUNC3(packet, type);
	case MYSQL_TYPE_DATE:
	case MYSQL_TYPE_DATETIME:
	case MYSQL_TYPE_TIMESTAMP:
		return FUNC0(packet, type);
	case MYSQL_TYPE_TIME:
		return FUNC5(packet, type);
	case MYSQL_TYPE_FLOAT:
		return FUNC2(packet, type);
	case MYSQL_TYPE_DOUBLE:
		return FUNC1(packet, type);
	case MYSQL_TYPE_BIT:
	case MYSQL_TYPE_NEWDECIMAL:
	case MYSQL_TYPE_BLOB:
	case MYSQL_TYPE_TINY_BLOB:
	case MYSQL_TYPE_MEDIUM_BLOB:
	case MYSQL_TYPE_LONG_BLOB:
	case MYSQL_TYPE_STRING:
	case MYSQL_TYPE_VAR_STRING:
		/* they are all length-encoded strings */
		return FUNC4(packet, type);
	default:
		break;
	}

	return -1;
}