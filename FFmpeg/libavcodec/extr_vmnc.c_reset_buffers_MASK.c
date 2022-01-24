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
struct TYPE_3__ {scalar_t__ cur_hy; scalar_t__ cur_hx; scalar_t__ cur_h; scalar_t__ cur_w; int /*<<< orphan*/  screendta; int /*<<< orphan*/  curmask; int /*<<< orphan*/  curbits; } ;
typedef  TYPE_1__ VmncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(VmncContext *c)
{
    FUNC0(&c->curbits);
    FUNC0(&c->curmask);
    FUNC0(&c->screendta);
    c->cur_w = c->cur_h = 0;
    c->cur_hx = c->cur_hy = 0;

}