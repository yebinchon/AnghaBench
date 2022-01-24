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
typedef  int /*<<< orphan*/  screen_event_t ;
struct TYPE_3__ {int /*<<< orphan*/  keyboard_state; } ;
typedef  TYPE_1__ qnx_input_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int KEY_DOWN ; 
 int KEY_REPEAT ; 
 int /*<<< orphan*/  RETRO_DEVICE_KEYBOARD ; 
 int /*<<< orphan*/  SCREEN_PROPERTY_KEY_CAP ; 
 int /*<<< orphan*/  SCREEN_PROPERTY_KEY_FLAGS ; 
 int /*<<< orphan*/  SCREEN_PROPERTY_KEY_MODIFIERS ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(
      qnx_input_t *qnx,
      screen_event_t event, int type)
{
    // Get key properties from screen event
    int flags = 0;
    FUNC4(event, SCREEN_PROPERTY_KEY_FLAGS, &flags);

    int cap = 0;
    FUNC4(event, SCREEN_PROPERTY_KEY_CAP, &cap);

    int mod = 0;
    FUNC4(event, SCREEN_PROPERTY_KEY_MODIFIERS, &mod);

    // Calculate state
    unsigned keycode = FUNC3(cap);
    bool keydown = flags & KEY_DOWN;
    bool keyrepeat = flags & KEY_REPEAT;

    // Fire keyboard event
    if(!keyrepeat)
    {
        FUNC2(keydown, keycode, 0, mod, RETRO_DEVICE_KEYBOARD);
    }

    // Apply keyboard state
    if(keydown && !keyrepeat)
    {
       FUNC1(qnx->keyboard_state, cap);
    }
    else if(!keydown && !keyrepeat)
    {
       FUNC0(qnx->keyboard_state, cap);
    }
}