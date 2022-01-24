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
typedef  int /*<<< orphan*/  vita2d_texture ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,float,float,float,float,float,float,float) ; 
 float FUNC1 (int /*<<< orphan*/  const*) ; 
 float FUNC2 (int /*<<< orphan*/  const*) ; 

void FUNC3(const vita2d_texture *texture, float x, float y, float x_scale, float y_scale, float rad)
{
	FUNC0(texture, x, y, x_scale, y_scale,
		rad, FUNC2(texture)/2.0f,
		FUNC1(texture)/2.0f);
}