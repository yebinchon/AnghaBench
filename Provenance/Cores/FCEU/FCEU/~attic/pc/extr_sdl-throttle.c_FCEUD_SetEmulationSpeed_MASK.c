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
 int /*<<< orphan*/  FUNC0 () ; 
#define  EMUSPEED_FASTER 132 
#define  EMUSPEED_FASTEST 131 
#define  EMUSPEED_NORMAL 130 
#define  EMUSPEED_SLOWER 129 
#define  EMUSPEED_SLOWEST 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int fps_scale ; 
 int* fps_scale_table ; 
 int /*<<< orphan*/  fps_table_size ; 

void FUNC4(int cmd)
{
	switch(cmd)
	{
	case EMUSPEED_SLOWEST:	fps_scale=fps_scale_table[0];  break;
	case EMUSPEED_SLOWER:	FUNC0(); break;
	case EMUSPEED_NORMAL:	fps_scale=256; break;
	case EMUSPEED_FASTER:	FUNC2(); break;
	case EMUSPEED_FASTEST:	fps_scale=fps_scale_table[fps_table_size-1]; break;
	default:
		return;
	}

	FUNC3();

	FUNC1("emulation speed %d%%",(fps_scale*100)>>8);
}