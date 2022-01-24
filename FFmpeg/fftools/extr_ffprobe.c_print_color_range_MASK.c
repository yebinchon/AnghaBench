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
typedef  enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
typedef  int /*<<< orphan*/  WriterContext ;

/* Variables and functions */
 int AVCOL_RANGE_UNSPECIFIED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(WriterContext *w, enum AVColorRange color_range)
{
    const char *val = FUNC0(color_range);
    if (!val || color_range == AVCOL_RANGE_UNSPECIFIED) {
        FUNC2("color_range", "unknown");
    } else {
        FUNC1("color_range", val);
    }
}