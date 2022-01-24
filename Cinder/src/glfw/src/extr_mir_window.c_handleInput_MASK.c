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
typedef  int /*<<< orphan*/  MirInputEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
#define  mir_input_event_type_key 129 
#define  mir_input_event_type_pointer 128 

__attribute__((used)) static void FUNC5(const MirInputEvent* input_event, _GLFWwindow* window)
{
    int type = FUNC4(input_event);

    switch (type)
    {
        case mir_input_event_type_key:
            FUNC0(FUNC2(input_event), window);
            break;
        case mir_input_event_type_pointer:
            FUNC1(FUNC3(input_event), window);
            break;
        default:
            break;
    }
}