#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * uniform_locations; int /*<<< orphan*/  program; } ;
struct TYPE_6__ {int /*<<< orphan*/  egl_config_attribs; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  yuv_egl_config_attribs ; 
 TYPE_2__ yuv_shader ; 

__attribute__((used)) static int FUNC5(RASPITEX_STATE *state)
{
    int rc;
    state->egl_config_attribs = yuv_egl_config_attribs;
    rc = FUNC4(state);
    if (rc != 0)
       goto end;

    rc = FUNC3(&yuv_shader);
    FUNC0(FUNC2(yuv_shader.program));
    FUNC0(FUNC1(yuv_shader.uniform_locations[0], 0)); // tex unit
end:
    return rc;
}