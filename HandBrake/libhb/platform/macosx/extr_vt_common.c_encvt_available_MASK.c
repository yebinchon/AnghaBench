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
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  scalar_t__ CFIndex ;
typedef  int /*<<< orphan*/  CFDictionaryRef ;
typedef  int /*<<< orphan*/  CFArrayRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kVTVideoEncoderSpecification_EncoderID ; 

int FUNC6(CFStringRef encoder)
{
    CFArrayRef encoder_list;
    FUNC5(NULL, &encoder_list);
    CFIndex size = FUNC0(encoder_list);

    for (CFIndex i = 0; i < size; i++ )
    {
        CFDictionaryRef encoder_dict = FUNC1(encoder_list, i);
        CFStringRef encoder_id = FUNC2(encoder_dict, kVTVideoEncoderSpecification_EncoderID);
        if (FUNC3(encoder_id, encoder))
        {
            FUNC4(encoder_list);
            return 1;
        }
    }
    FUNC4(encoder_list);
    return 0;
}