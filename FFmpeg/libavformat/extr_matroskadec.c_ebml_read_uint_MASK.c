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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int NEEDS_CHECKING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(AVIOContext *pb, int size, uint64_t *num)
{
    int n = 0;

    /* big-endian ordering; build up number */
    *num = 0;
    while (n++ < size)
        *num = (*num << 8) | FUNC0(pb);

    return NEEDS_CHECKING;
}