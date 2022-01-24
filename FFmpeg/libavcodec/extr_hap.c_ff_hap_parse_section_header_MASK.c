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
typedef  enum HapSectionType { ____Placeholder_HapSectionType } HapSectionType ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(GetByteContext *gbc, int *section_size,
                                enum HapSectionType *section_type)
{
    if (FUNC1(gbc) < 4)
        return AVERROR_INVALIDDATA;

    *section_size = FUNC2(gbc);
    *section_type = FUNC0(gbc);

    if (*section_size == 0) {
        if (FUNC1(gbc) < 4)
            return AVERROR_INVALIDDATA;

        *section_size = FUNC3(gbc);
    }

    if (*section_size > FUNC1(gbc) || *section_size < 0)
        return AVERROR_INVALIDDATA;
    else
        return 0;
}