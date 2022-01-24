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
struct TYPE_3__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ AACEncContext ;

/* Variables and functions */
 char const FUNC0 (int,int) ; 
 char const TYPE_FIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(AACEncContext *s, const char *name)
{
    int i, namelen, padbits;

    namelen = FUNC4(name) + 2;
    FUNC2(&s->pb, 3, TYPE_FIL);
    FUNC2(&s->pb, 4, FUNC0(namelen, 15));
    if (namelen >= 15)
        FUNC2(&s->pb, 8, namelen - 14);
    FUNC2(&s->pb, 4, 0); //extension type - filler
    padbits = -FUNC3(&s->pb) & 7;
    FUNC1(&s->pb);
    for (i = 0; i < namelen - 2; i++)
        FUNC2(&s->pb, 8, name[i]);
    FUNC2(&s->pb, 12 - padbits, 0);
}