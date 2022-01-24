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
struct TYPE_3__ {int faceStyleFlags; int textColorRGBA; } ;
typedef  TYPE_1__ StyleRecord ;

/* Variables and functions */
 int BOLD ; 
 int FUNC0 (int) ; 
 int ITALIC ; 
 int UNDERLINE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *dst, StyleRecord *style)
{
    if (style == NULL)
    {
        FUNC1(dst, "{\\r}");
        return FUNC2(dst);
    }
    FUNC1(dst, "{\\i%d\\b%d\\u%d\\1c&H%X&\\1a&H%02X&}",
        !!(style->faceStyleFlags & ITALIC),
        !!(style->faceStyleFlags & BOLD),
        !!(style->faceStyleFlags & UNDERLINE),
        FUNC0(style->textColorRGBA >> 8),
        255 - (style->textColorRGBA & 0xFF)); // SSA alpha is inverted 0==opaque

    return FUNC2(dst);
}