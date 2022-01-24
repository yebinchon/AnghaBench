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
typedef  int /*<<< orphan*/  date ;
struct TYPE_3__ {char* value; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC4(AVDictionary **m)
{
    AVDictionaryEntry *t;
    char date[17] = { 0 };      // YYYY-MM-DD hh:mm

    if (!(t = FUNC2(*m, "TYER")) &&
        !(t = FUNC2(*m, "TYE")))
        return;
    FUNC1(date, t->value, 5);
    FUNC0(m, "TYER", NULL, 0);
    FUNC0(m, "TYE", NULL, 0);

    if (!(t = FUNC2(*m, "TDAT")) &&
        !(t = FUNC2(*m, "TDA")))
        goto finish;
    FUNC3(date + 4, sizeof(date) - 4, "-%.2s-%.2s", t->value + 2, t->value);
    FUNC0(m, "TDAT", NULL, 0);
    FUNC0(m, "TDA", NULL, 0);

    if (!(t = FUNC2(*m, "TIME")) &&
        !(t = FUNC2(*m, "TIM")))
        goto finish;
    FUNC3(date + 10, sizeof(date) - 10,
             " %.2s:%.2s", t->value, t->value + 2);
    FUNC0(m, "TIME", NULL, 0);
    FUNC0(m, "TIM", NULL, 0);

finish:
    if (date[0])
        FUNC0(m, "date", date, 0);
}