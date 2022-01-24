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
struct TYPE_4__ {int type; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
typedef  void* guint8 ;
typedef  void* guint64 ;
typedef  void* guint32 ;
typedef  void* guint16 ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
#define  MYSQL_TYPE_INT24 132 
#define  MYSQL_TYPE_LONG 131 
#define  MYSQL_TYPE_LONGLONG 130 
#define  MYSQL_TYPE_SHORT 129 
#define  MYSQL_TYPE_TINY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,void**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(GString *packet, network_mysqld_type_t *type) {
	guint64 i64;
	guint8  i8;
	guint16 i16;
	guint32 i32;
	int err = 0;

	err = err || FUNC4(type, &i64, NULL);
	if (0 != err) return -1;

	switch (type->type) {
	case MYSQL_TYPE_TINY:

		i8 = i64;

		err = err || FUNC3(packet, i8);
		break;
	case MYSQL_TYPE_SHORT:
		i16 = i64;

		err = err || FUNC0(packet, i16);
		break;
	case MYSQL_TYPE_LONG:
	case MYSQL_TYPE_INT24:
		i32 = i64;

		err = err || FUNC1(packet, i32);
		break;
	case MYSQL_TYPE_LONGLONG:
		err = err || FUNC2(packet, i64);
		break;
	default:
		err = -1;
		break;
	}

	return err ? -1 : 0;
}