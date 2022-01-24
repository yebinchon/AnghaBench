#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {float const r; float const g; float const b; int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ Thread ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float const,float const,float const,float) ; 
 float FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  FUNC7 (float) ; 

__attribute__((used)) static int FUNC8(void* data)
{
    const Thread* thread = data;

    FUNC4(thread->window);
    FUNC6(1);

    while (running)
    {
        const float v = (float) FUNC0(FUNC7(FUNC3() * 2.f));
        FUNC2(thread->r * v, thread->g * v, thread->b * v, 0.f);

        FUNC1(GL_COLOR_BUFFER_BIT);
        FUNC5(thread->window);
    }

    FUNC4(NULL);
    return 0;
}