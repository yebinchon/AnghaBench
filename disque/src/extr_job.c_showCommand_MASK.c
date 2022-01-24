#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  job ;
struct TYPE_9__ {TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_10__ {int /*<<< orphan*/  nullbulk; } ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__ shared ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(client *c) {
    if (FUNC4(c,c->argv[1]->ptr,FUNC3(c->argv[1]->ptr))
        == C_ERR) return;

    job *j = FUNC2(c->argv[1]->ptr);
    if (!j) {
        FUNC0(c,shared.nullbulk);
        return;
    }
    FUNC1(c,j);
}