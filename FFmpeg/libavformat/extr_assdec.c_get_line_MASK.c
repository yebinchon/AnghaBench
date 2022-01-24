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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t FUNC4(AVBPrint *buf, FFTextReader *tr)
{
    int64_t pos = FUNC2(tr);

    FUNC1(buf);
    for (;;) {
        char c = FUNC3(tr);
        if (!c)
            break;
        FUNC0(buf, c, 1);
        if (c == '\n')
            break;
    }
    return pos;
}