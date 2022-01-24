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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC1( uint8_t * src, uint8_t * dst, int pitch, int height )
{
    /* When TFF, we want to copy alternating
       lines starting at 0, the top field.
       When BFF, we want to start at line 1. */
    int y;
    for( y = height; y > 0; y = y - 2 )
    {
      FUNC0( dst, src, pitch );
      dst += pitch;
      src += pitch * 2;
    }
}