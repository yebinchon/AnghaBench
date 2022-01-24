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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int fps_scale ; 
 int* fps_scale_table ; 

void FUNC2(void)
{
 int i;
 for(i=1; fps_scale_table[i]<fps_scale; i++)
  ;
 fps_scale = fps_scale_table[i+1];

 FUNC1();

 FUNC0("emulation speed %d%%",(fps_scale*100)>>8);
}