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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 float FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static float FUNC4(GetBitContext *gb)
{
    int power = FUNC0(gb, 5);
    float f = FUNC3(FUNC2(gb, 23), power - 23);
    if (FUNC1(gb))
        f = -f;
    return f;
}