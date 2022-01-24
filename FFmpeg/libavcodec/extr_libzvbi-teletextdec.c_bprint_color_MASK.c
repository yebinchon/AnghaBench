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
struct TYPE_3__ {int /*<<< orphan*/ * color_map; } ;
typedef  TYPE_1__ vbi_page ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int,int,int) ; 

__attribute__((used)) static void FUNC4(const char *type, AVBPrint *buf, vbi_page *page, unsigned ci)
{
    int r = FUNC2(page->color_map[ci]);
    int g = FUNC1(page->color_map[ci]);
    int b = FUNC0(page->color_map[ci]);
    FUNC3(buf, "{\\%s&H%02X%02X%02X&}", type, b, g, r);
}