#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float width; } ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__ const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 

__attribute__((used)) static void FUNC10(GLFWmonitor* monitor)
{
    int count, x, y, widthMM, heightMM, i;
    const GLFWvidmode* mode = FUNC5(monitor);
    const GLFWvidmode* modes = FUNC6(monitor, &count);

    FUNC3(monitor, &x, &y);
    FUNC2(monitor, &widthMM, &heightMM);

    FUNC8("Name: %s (%s)\n",
           FUNC1(monitor),
           FUNC4() == monitor ? "primary" : "secondary");
    FUNC8("Current mode: %s\n", FUNC0(mode));
    FUNC8("Virtual position: %i %i\n", x, y);

    FUNC8("Physical size: %i x %i mm (%0.2f dpi)\n",
           widthMM, heightMM, mode->width * 25.4f / widthMM);

    FUNC8("Modes:\n");

    for (i = 0;  i < count;  i++)
    {
        FUNC8("%3u: %s", (unsigned int) i, FUNC0(modes + i));

        if (FUNC7(mode, modes + i, sizeof(GLFWvidmode)) == 0)
            FUNC8(" (current mode)");

        FUNC9('\n');
    }
}