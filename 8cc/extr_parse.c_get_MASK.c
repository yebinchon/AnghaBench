#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kind; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ Token ;
struct TYPE_8__ {scalar_t__ kind; } ;

/* Variables and functions */
 scalar_t__ TINVALID ; 
 scalar_t__ TSTRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 

__attribute__((used)) static Token *FUNC4() {
    Token *r = FUNC3();
    if (r->kind == TINVALID)
        FUNC1(r, "stray character in program: '%c'", r->c);
    if (r->kind == TSTRING && FUNC2()->kind == TSTRING)
        FUNC0(r);
    return r;
}