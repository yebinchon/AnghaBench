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
 float fly_aspect ; 
 int /*<<< orphan*/  FUNC0 (float) ; 

void FUNC1(unsigned width, unsigned height)
{
   /* send aspect float to videeo_driver */
   fly_aspect = (float)width / height;
   FUNC0((float)fly_aspect);
}