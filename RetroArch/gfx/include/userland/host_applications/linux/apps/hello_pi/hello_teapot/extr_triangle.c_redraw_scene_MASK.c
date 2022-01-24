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
struct TYPE_3__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  display; int /*<<< orphan*/  tex; int /*<<< orphan*/  model; } ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(CUBE_STATE_T *state)
{
   // Start with a clear screen
   FUNC2( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

   FUNC0(state->model, state->tex);

   FUNC1(state->display, state->surface);
}