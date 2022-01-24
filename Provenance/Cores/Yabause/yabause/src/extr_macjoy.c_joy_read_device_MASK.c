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
struct TYPE_7__ {int /*<<< orphan*/  buttons_count; int /*<<< orphan*/  buttons; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ joydata_t ;
typedef  int /*<<< orphan*/  joy_elemdata_t ;
typedef  int /*<<< orphan*/  io_object_t ;
typedef  scalar_t__ SInt32 ;
typedef  scalar_t__ CFTypeRef ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  CFNumberRef ;
typedef  int /*<<< orphan*/  CFMutableDictionaryRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  joy_cmp_buttons ; 
 int joy_count ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* joys ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFNumberSInt32Type ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 scalar_t__ kHIDPage_GenericDesktop ; 
 scalar_t__ kHIDUsage_GD_GamePad ; 
 scalar_t__ kHIDUsage_GD_Joystick ; 
 int /*<<< orphan*/  kIOHIDPrimaryUsageKey ; 
 int /*<<< orphan*/  kIOHIDPrimaryUsagePageKey ; 
 int /*<<< orphan*/  kIOHIDProductKey ; 
 int /*<<< orphan*/  kNilOptions ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC10 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC11(io_object_t dev)    {
    CFMutableDictionaryRef props = 0;

    /* Create a dictionary to read the device's properties. */
    if(FUNC5(dev, &props, kCFAllocatorDefault,
                                         kNilOptions) == KERN_SUCCESS)  {
        CFTypeRef inf;
        SInt32 page, usage;
        void *ptr;

        /* Grab the primary usage page of the device. */
        inf = FUNC0(props, FUNC3(kIOHIDPrimaryUsagePageKey));

        if(!inf || !FUNC1((CFNumberRef)inf, kCFNumberSInt32Type,
                                     &page))    {
            goto out;
        }

        /* Ignore devices that are not in the Generic Desktop page. */
        if(page != kHIDPage_GenericDesktop) {
            goto out;
        }

        /* Grab the primary device usage. */
        inf = FUNC0(props, FUNC3(kIOHIDPrimaryUsageKey));

        if(!inf || !FUNC1((CFNumberRef)inf, kCFNumberSInt32Type,
                                     &usage))   {
            goto out;
        }

        /* Ignore devices that are not either a Game Pad or Joystick. */
        if(usage != kHIDUsage_GD_GamePad && usage != kHIDUsage_GD_Joystick) {
            goto out;
        }

        /* Allocate space for the new joystick structure. */
        ptr = FUNC10(joys, (joy_count + 1) * sizeof(joydata_t));

        if(ptr == NULL) {
            goto out;
        }

        joys = (joydata_t *)ptr;
        FUNC8(joys + joy_count, 0, sizeof(joydata_t));

        /* Grab and store the name of the device. */
        inf = FUNC0(props, FUNC3(kIOHIDProductKey));

        if(!FUNC4((CFStringRef)inf, joys[joy_count].name, 256,
                               kCFStringEncodingUTF8))  {
            goto out;
        }

        /* Create the device interface needed to interact with the device. */
        if(!FUNC6(dev, joys + joy_count))    {
            goto out;
        }

        /* Find all elements of the device. */
        FUNC7(props, joys + joy_count);

        FUNC9(joys[joy_count].buttons, joys[joy_count].buttons_count,
              sizeof(joy_elemdata_t), &joy_cmp_buttons);

        ++joy_count;
    }

out:
    FUNC2(props);
}