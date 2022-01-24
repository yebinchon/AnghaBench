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
typedef  enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
typedef  int /*<<< orphan*/  WriterContext ;

/* Variables and functions */
 int AVCOL_SPC_UNSPECIFIED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(WriterContext *w, enum AVColorSpace color_space)
{
    const char *val = FUNC0(color_space);
    if (!val || color_space == AVCOL_SPC_UNSPECIFIED) {
        FUNC2("color_space", "unknown");
    } else {
        FUNC1("color_space", val);
    }
}