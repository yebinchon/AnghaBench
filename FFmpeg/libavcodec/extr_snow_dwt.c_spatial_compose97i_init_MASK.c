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
struct TYPE_3__ {int y; int /*<<< orphan*/ * b3; int /*<<< orphan*/ * b2; int /*<<< orphan*/ * b1; int /*<<< orphan*/ * b0; } ;
typedef  int /*<<< orphan*/  IDWTELEM ;
typedef  TYPE_1__ DWTCompose ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(DWTCompose *cs, IDWTELEM *buffer, int height,
                                    int stride)
{
    cs->b0 = buffer + FUNC0(-3 - 1, height - 1) * stride;
    cs->b1 = buffer + FUNC0(-3,     height - 1) * stride;
    cs->b2 = buffer + FUNC0(-3 + 1, height - 1) * stride;
    cs->b3 = buffer + FUNC0(-3 + 2, height - 1) * stride;
    cs->y  = -3;
}