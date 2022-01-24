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
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_3__ {int /*<<< orphan*/  ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Vector *FUNC4(Vector *params) {
    Vector *r = FUNC0();
    for (int i = 0; i < FUNC2(params); i++) {
        Node *param = FUNC1(params, i);
        FUNC3(r, param->ty);
    }
    return r;
}