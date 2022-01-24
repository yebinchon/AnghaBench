#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* str; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(AVIOContext *s, AVBPrint *bp)
{

    do {
        FUNC0(bp);
        FUNC2(s, bp);
    } while (!FUNC1(s) && (bp->str[0] == ';' || bp->str[0] == '#' || bp->str[0] == 0));
}