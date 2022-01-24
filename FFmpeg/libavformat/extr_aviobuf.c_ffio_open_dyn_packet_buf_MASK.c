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
 int FUNC0 (int /*<<< orphan*/ **,int) ; 

int FUNC1(AVIOContext **s, int max_packet_size)
{
    if (max_packet_size <= 0)
        return -1;
    return FUNC0(s, max_packet_size);
}