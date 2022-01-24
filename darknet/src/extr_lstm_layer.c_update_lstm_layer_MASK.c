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
typedef  int /*<<< orphan*/  update_args ;
struct TYPE_3__ {int /*<<< orphan*/ * uo; int /*<<< orphan*/ * ug; int /*<<< orphan*/ * ui; int /*<<< orphan*/ * uf; int /*<<< orphan*/ * wo; int /*<<< orphan*/ * wg; int /*<<< orphan*/ * wi; int /*<<< orphan*/ * wf; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(layer l, update_args a)
{
    FUNC0(*(l.wf), a);
    FUNC0(*(l.wi), a);
    FUNC0(*(l.wg), a);
    FUNC0(*(l.wo), a);
    FUNC0(*(l.uf), a);
    FUNC0(*(l.ui), a);
    FUNC0(*(l.ug), a);
    FUNC0(*(l.uo), a);
}