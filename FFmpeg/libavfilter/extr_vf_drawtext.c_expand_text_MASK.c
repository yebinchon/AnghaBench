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
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx, char *text, AVBPrint *bp)
{
    int ret;

    FUNC2(bp);
    while (*text) {
        if (*text == '\\' && text[1]) {
            FUNC1(bp, text[1], 1);
            text += 2;
        } else if (*text == '%') {
            text++;
            if ((ret = FUNC4(ctx, bp, &text)) < 0)
                return ret;
        } else {
            FUNC1(bp, *text, 1);
            text++;
        }
    }
    if (!FUNC3(bp))
        return FUNC0(ENOMEM);
    return 0;
}