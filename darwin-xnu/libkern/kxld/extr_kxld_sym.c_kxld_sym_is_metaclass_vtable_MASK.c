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
typedef  int boolean_t ;
struct TYPE_4__ {scalar_t__ is_meta_vtable; } ;
typedef  TYPE_1__ KXLDSym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 

boolean_t
FUNC1(const KXLDSym *sym)
{
    FUNC0(sym);

    return (0 != sym->is_meta_vtable);
}