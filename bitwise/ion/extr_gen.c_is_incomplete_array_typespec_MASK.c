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
struct TYPE_3__ {scalar_t__ kind; int /*<<< orphan*/  num_elems; } ;
typedef  TYPE_1__ Typespec ;

/* Variables and functions */
 scalar_t__ TYPESPEC_ARRAY ; 

bool FUNC0(Typespec *typespec) {
    return typespec->kind == TYPESPEC_ARRAY && !typespec->num_elems;
}