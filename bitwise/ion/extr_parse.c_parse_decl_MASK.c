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
struct TYPE_4__ {int /*<<< orphan*/  notes; } ;
typedef  int /*<<< orphan*/  Notes ;
typedef  TYPE_1__ Decl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

Decl *FUNC4(void) {
    Notes notes = FUNC2();
    Decl *decl = FUNC1();
    if (!decl) {
        FUNC0("Expected declaration keyword, got %s", FUNC3());
    }
    decl->notes = notes;
    return decl;
}