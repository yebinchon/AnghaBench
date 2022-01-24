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
struct TYPE_4__ {int /*<<< orphan*/ * aggregate; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  scalar_t__ DeclKind ;
typedef  TYPE_1__ Decl ;
typedef  int /*<<< orphan*/  Aggregate ;

/* Variables and functions */
 scalar_t__ DECL_STRUCT ; 
 scalar_t__ DECL_UNION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 

Decl *FUNC2(SrcPos pos, DeclKind kind, const char *name, Aggregate *aggregate) {
    FUNC0(kind == DECL_STRUCT || kind == DECL_UNION);
    Decl *d = FUNC1(kind, pos, name);
    d->aggregate = aggregate;
    return d;
}