#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t num_fields; int /*<<< orphan*/  fields; } ;
struct TYPE_8__ {TYPE_1__ tuple; } ;
typedef  TYPE_2__ Typespec ;
typedef  int /*<<< orphan*/  SrcPos ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  TYPESPEC_TUPLE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Typespec *FUNC2(SrcPos pos, Typespec **fields, size_t num_fields) {
    Typespec *t = FUNC1(TYPESPEC_TUPLE, pos);
    t->tuple.fields = FUNC0(fields);
    t->tuple.num_fields = num_fields;
    return t;
}