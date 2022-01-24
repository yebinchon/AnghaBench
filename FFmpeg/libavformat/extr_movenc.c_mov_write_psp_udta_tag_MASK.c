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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(AVIOContext *pb,
                                   const char *str, const char *lang, int type)
{
    int len = FUNC4(str) + 1;
    if (len <= 0)
        return;
    FUNC1(pb, len * 2 + 10);        /* size */
    FUNC2(pb, type);                /* type */
    FUNC1(pb, FUNC3(lang)); /* language */
    FUNC1(pb, 0x01);                /* ? */
    FUNC0(pb, str);
}