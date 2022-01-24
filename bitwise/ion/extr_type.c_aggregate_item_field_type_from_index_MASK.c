#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* fields; scalar_t__ num_fields; } ;
struct TYPE_9__ {TYPE_2__ aggregate; } ;
typedef  TYPE_3__ Type ;
struct TYPE_7__ {TYPE_3__* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 

Type *FUNC2(Type *type, int index) {
    FUNC0(FUNC1(type));
    FUNC0(0 <= index && index < (int)type->aggregate.num_fields);
    return type->aggregate.fields[index].type;
}