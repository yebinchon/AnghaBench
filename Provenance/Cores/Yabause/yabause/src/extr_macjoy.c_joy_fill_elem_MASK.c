#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int min; int max; scalar_t__ cookie; } ;
typedef  TYPE_1__ joy_elemdata_t ;
typedef  scalar_t__ IOHIDElementCookie ;
typedef  int /*<<< orphan*/  CFTypeRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFNumberIntType ; 
 int /*<<< orphan*/  kIOHIDElementCookieKey ; 
 int /*<<< orphan*/  kIOHIDElementMaxKey ; 
 int /*<<< orphan*/  kIOHIDElementMinKey ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(CFTypeRef elem, joy_elemdata_t *ptr)  {
    CFTypeRef ref;
    int num;

    FUNC3(ptr, 0, sizeof(joy_elemdata_t));

    /* Grab the element cookie. */
    if((ref = FUNC0(elem, FUNC2(kIOHIDElementCookieKey))))   {
        if(FUNC1(ref, kCFNumberIntType, &num))   {
            ptr->cookie = (IOHIDElementCookie)num;
        }
    }

    /* Grab the element's minimum value. */
    if((ref = FUNC0(elem, FUNC2(kIOHIDElementMinKey))))  {
        if(FUNC1(ref, kCFNumberIntType, &num))   {
            ptr->min = num;
        }
    }

    /* Grab the element's maximum value. */
    if((ref = FUNC0(elem, FUNC2(kIOHIDElementMaxKey))))  {
        if(FUNC1(ref, kCFNumberIntType, &num))   {
            ptr->max = num;
        }
    }
}