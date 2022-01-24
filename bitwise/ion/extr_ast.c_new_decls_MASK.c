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
struct TYPE_4__ {size_t num_decls; int /*<<< orphan*/  decls; } ;
typedef  TYPE_1__ Decls ;
typedef  int /*<<< orphan*/  Decl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int) ; 

Decls *FUNC2(Decl **decls, size_t num_decls) {
    Decls *d = FUNC1(sizeof(Decls));
    d->decls = FUNC0(decls);
    d->num_decls = num_decls;
    return d;
}