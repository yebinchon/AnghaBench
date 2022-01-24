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
typedef  int /*<<< orphan*/  Type ;
struct TYPE_3__ {int sclass; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* Symbol ;

/* Variables and functions */
#define  AUTO 132 
#define  ENUM 131 
#define  EXTERN 130 
#define  STATIC 129 
#define  TYPEDEF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(Symbol p, Type ty) {
	switch (p->sclass) {
	case AUTO:
		FUNC1(stderr, "%s;\n", FUNC2(ty, p->name));
		break;
	case STATIC: case EXTERN:
		FUNC1(stderr, "%k %s;\n", p->sclass, FUNC2(ty, p->name));
		break;
	case TYPEDEF: case ENUM:
		break;
	default: FUNC0(0);
	}
}