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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  IOHIDDeviceRef ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  scalar_t__ CFNumberRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFNumberIntType ; 

__attribute__((used)) static int32_t FUNC4(
      IOHIDDeviceRef device, CFStringRef key)
{
   CFNumberRef ref = (CFNumberRef)FUNC3(device, key);

   if (ref && (FUNC0(ref) == FUNC1()))
   {
      int32_t value   = 0;
      FUNC2((CFNumberRef)ref, kCFNumberIntType, &value);
      return value;
   }

   return 0;
}