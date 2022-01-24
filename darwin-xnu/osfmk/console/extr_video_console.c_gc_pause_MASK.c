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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int disableConsoleOutput ; 
 int gc_enabled ; 
 scalar_t__ gc_paused_progress ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vc_progress_call ; 
 int /*<<< orphan*/  vc_progress_deadline ; 
 scalar_t__ vc_progress_enable ; 
 int /*<<< orphan*/  vc_progress_lock ; 
 int vc_progress_withmeter ; 
 int /*<<< orphan*/  vc_progressmeter_call ; 
 int /*<<< orphan*/  vc_progressmeter_deadline ; 

__attribute__((used)) static void
FUNC8( boolean_t pause, boolean_t graphics_now )
{
	spl_t s;

	s = FUNC5( );
	FUNC0( );

    disableConsoleOutput = (pause && !FUNC2());
    gc_enabled           = (!pause && !graphics_now);

    FUNC1( );

    FUNC3(&vc_progress_lock);

    if (pause) 
    {
        gc_paused_progress = vc_progress_enable;
	vc_progress_enable = FALSE;
    }
    else vc_progress_enable = gc_paused_progress;

    if (vc_progress_enable)
    {
#if !CONFIG_EMBEDDED
	if (1 & vc_progress_withmeter) FUNC7(&vc_progressmeter_call, vc_progressmeter_deadline);
	else                           
#endif /* !CONFIG_EMBEDDED */
	FUNC7(&vc_progress_call, vc_progress_deadline);
    }

    FUNC4(&vc_progress_lock);
    FUNC6(s);
}