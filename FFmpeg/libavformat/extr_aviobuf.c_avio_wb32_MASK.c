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
typedef  unsigned int uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 

void FUNC1(AVIOContext *s, unsigned int val)
{
    FUNC0(s,           val >> 24 );
    FUNC0(s, (uint8_t)(val >> 16));
    FUNC0(s, (uint8_t)(val >> 8 ));
    FUNC0(s, (uint8_t) val       );
}