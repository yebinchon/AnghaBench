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
typedef  int /*<<< orphan*/  spl_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 int /*<<< orphan*/  gc_acquired ; 
 scalar_t__ gc_enabled ; 
 int /*<<< orphan*/  gc_graphics_boot ; 
 int kDataAlpha ; 
 int kDataBack ; 
 int kProgressBarHeight ; 
 int kProgressBarWidth ; 
 int kProgressMeterKernel ; 
 int kProgressMeterOff ; 
 int kProgressMeterUser ; 
 int kSave ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  vc_progress_lock ; 
 int /*<<< orphan*/  vc_progress_white ; 
 void* vc_progressmeter_backbuffer ; 
 scalar_t__ vc_progressmeter_drawn ; 
 int vc_progressmeter_enable ; 
 int vc_uiscale ; 

__attribute__((used)) static void
FUNC8(int new_value)
{
    spl_t     s;
    void    * new_buffer;
    boolean_t stashBackbuffer;

    stashBackbuffer = FALSE;
    new_buffer = NULL;
    if (new_value)
    {
	new_buffer = FUNC1((kProgressBarWidth * vc_uiscale) 
		            * (kProgressBarHeight * vc_uiscale) * sizeof(int));
    }

    s = FUNC5();
    FUNC3(&vc_progress_lock);

    if (kProgressMeterUser == new_value)
    {
	if (gc_enabled || !gc_acquired || !gc_graphics_boot
	 || (kProgressMeterKernel == vc_progressmeter_enable)) new_value = vc_progressmeter_enable;
    }

    if (new_value != vc_progressmeter_enable)
    {
	if (new_value)
	{
	    if (kProgressMeterOff == vc_progressmeter_enable)
	    {
		vc_progressmeter_backbuffer = new_buffer;
		FUNC7(kDataAlpha | kSave, 0, (kProgressBarWidth * vc_uiscale), 0);
		new_buffer = NULL;
		vc_progressmeter_drawn = 0;
	    }
	    vc_progressmeter_enable = new_value;
	}
	else if (vc_progressmeter_backbuffer)
	{
	    if (kProgressMeterUser == vc_progressmeter_enable)
	    {
		FUNC7(kDataBack, 0, (kProgressBarWidth * vc_uiscale), vc_progressmeter_drawn);
	    }
	    else stashBackbuffer = TRUE;
	    new_buffer = vc_progressmeter_backbuffer;
	    vc_progressmeter_backbuffer = NULL;
	    vc_progressmeter_enable = FALSE;
	}
    }

    FUNC4(&vc_progress_lock);
    FUNC6(s);

    if (new_buffer)
    {
	if (stashBackbuffer) FUNC0(new_buffer, 
	    		                                (kProgressBarWidth * vc_uiscale) 
	    		                                * (kProgressBarHeight * vc_uiscale) 
	    		                                * sizeof(int),
	    		                                vc_progress_white);
	FUNC2(new_buffer, (kProgressBarWidth * vc_uiscale) 
			* (kProgressBarHeight * vc_uiscale) * sizeof(int));
    }
}