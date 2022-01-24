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

void FUNC1( uint8_t * srcp, uint8_t * dstp, int height, int pitch )
{
    int y;
    for( y = height; y > 0; y-- )
    {
      FUNC0( dstp, srcp, pitch );
      dstp += pitch;
      FUNC0( dstp, srcp, pitch );
      srcp += pitch;
      dstp += pitch;
    }
}