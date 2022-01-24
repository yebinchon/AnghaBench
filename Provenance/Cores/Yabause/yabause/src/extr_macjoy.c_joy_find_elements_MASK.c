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
typedef  int /*<<< orphan*/  joydata_t ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  CFTypeRef ;
typedef  scalar_t__ CFTypeID ;
typedef  TYPE_1__ CFRange ;
typedef  int /*<<< orphan*/  CFMutableDictionaryRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  joy_elem_array_hnd ; 
 int /*<<< orphan*/  kIOHIDElementKey ; 

__attribute__((used)) static void FUNC6(CFMutableDictionaryRef prop, joydata_t *joy)  {
    CFTypeRef elem;
    CFTypeID type;

    if((elem = FUNC3(prop, FUNC5(kIOHIDElementKey))))    {
        type = FUNC4(elem);

        if(type == FUNC2())  {
            /* Call our function on each element of the array. */
            CFRange r = { 0, FUNC1(elem) };
            FUNC0(elem, r, &joy_elem_array_hnd, (void *)joy);
        }
    }
}