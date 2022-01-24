#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  MirEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
#define  mir_event_type_input 128 

__attribute__((used)) static void FUNC3(const MirEvent* event, _GLFWwindow* window)
{
    int type = FUNC2(event);

    switch (type)
    {
        case mir_event_type_input:
            FUNC0(FUNC1(event), window);
            break;
        default:
            break;
    }
}