#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t num_fields; TYPE_1__* fields; } ;
struct TYPE_7__ {TYPE_2__ aggregate; } ;
typedef  TYPE_3__ Type ;
struct TYPE_5__ {scalar_t__ name; } ;

/* Variables and functions */

bool FUNC0(Type *type) {
    for (size_t i = 0; i < type->aggregate.num_fields; i++) {
        for (size_t j = i+1; j < type->aggregate.num_fields; j++) {
            if (type->aggregate.fields[i].name == type->aggregate.fields[j].name) {
                return true;
            }
        }
    }
    return false;
}