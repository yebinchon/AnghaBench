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
struct TYPE_3__ {int /*<<< orphan*/  gb; int /*<<< orphan*/ ** temp; } ;
typedef  TYPE_1__ HYuvContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  re ; 

__attribute__((used)) static void FUNC5(HYuvContext *s, int count)
{
    int i;
    FUNC2(re, &s->gb);
    count /= 2;

    if (count >= (FUNC4(&s->gb)) / (32 * 2)) {
        for (i = 0; i < count && FUNC0(re, &s->gb) > 0; i++) {
            FUNC3(s->temp[0][2 * i], s->temp[0][2 * i + 1], 0);
        }
    } else {
        for (i = 0; i < count; i++) {
            FUNC3(s->temp[0][2 * i], s->temp[0][2 * i + 1], 0);
        }
    }
    FUNC1(re, &s->gb);
}