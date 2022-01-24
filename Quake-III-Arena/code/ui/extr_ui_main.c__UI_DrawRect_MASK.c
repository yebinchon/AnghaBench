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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (float const*) ; 

void FUNC3( float x, float y, float width, float height, float size, const float *color ) {
	FUNC2( color );

  FUNC1(x, y, width, height, size);
  FUNC0(x, y, width, height, size);

	FUNC2( NULL );
}