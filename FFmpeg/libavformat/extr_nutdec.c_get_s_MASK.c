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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t FUNC1(AVIOContext *bc)
{
    int64_t v = FUNC0(bc) + 1;

    if (v & 1)
        return -(v >> 1);
    else
        return  (v >> 1);
}