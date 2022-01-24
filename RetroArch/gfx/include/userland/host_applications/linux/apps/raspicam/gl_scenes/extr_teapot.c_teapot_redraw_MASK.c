#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  texture; scalar_t__ scene_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  model; } ;
typedef  TYPE_1__ TEAPOT_STATE_T ;
typedef  TYPE_2__ RASPITEX_STATE ;

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(RASPITEX_STATE *raspitex_state)
{
   TEAPOT_STATE_T *state = (TEAPOT_STATE_T *) raspitex_state->scene_state;

   // Start with a clear screen
   FUNC2(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

   /* Bind the OES texture which is used to render the camera preview */
   FUNC1(GL_TEXTURE_EXTERNAL_OES, raspitex_state->texture);
   FUNC0(state->model, raspitex_state->texture);
   return 0;
}