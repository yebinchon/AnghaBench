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
typedef  int /*<<< orphan*/  FFTContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 

FFTContext *FUNC3(int nbits, int inverse)
{
    FFTContext *s = FUNC1(sizeof(*s));

    if (s && FUNC2(s, nbits, inverse))
        FUNC0(&s);

    return s;
}