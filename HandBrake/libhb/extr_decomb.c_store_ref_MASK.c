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
struct TYPE_3__ {int /*<<< orphan*/ ** ref; } ;
typedef  TYPE_1__ hb_filter_private_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void FUNC2(hb_filter_private_t * pv, hb_buffer_t * b)
{
    FUNC0(&pv->ref[0]);
    FUNC1(&pv->ref[0], &pv->ref[1], sizeof(hb_buffer_t *) * 2 );
    pv->ref[2] = b;
}