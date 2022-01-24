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
struct TYPE_3__ {int /*<<< orphan*/  v_texture; int /*<<< orphan*/  u_texture; int /*<<< orphan*/  y_texture; int /*<<< orphan*/  texture; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

int FUNC2(RASPITEX_STATE *raspitex_state)
{
   FUNC0(FUNC1(1, &raspitex_state->texture));
   FUNC0(FUNC1(1, &raspitex_state->y_texture));
   FUNC0(FUNC1(1, &raspitex_state->u_texture));
   FUNC0(FUNC1(1, &raspitex_state->v_texture));
   return 0;
}