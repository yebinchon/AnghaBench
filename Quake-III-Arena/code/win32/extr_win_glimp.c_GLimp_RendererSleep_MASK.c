#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * hGLRC; int /*<<< orphan*/  hDC; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ glw_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  renderActiveEvent ; 
 int /*<<< orphan*/  renderCommandsEvent ; 
 int /*<<< orphan*/  renderCompletedEvent ; 
 void* smpData ; 
 int /*<<< orphan*/  wglErrors ; 

void *FUNC4( void ) {
	void	*data;

	if ( !FUNC3( glw_state.hDC, NULL ) ) {
		wglErrors++;
	}

	FUNC0( renderActiveEvent );

	// after this, the front end can exit GLimp_FrontEndSleep
	FUNC1( renderCompletedEvent );

	FUNC2( renderCommandsEvent, INFINITE );

	if ( !FUNC3( glw_state.hDC, glw_state.hGLRC ) ) {
		wglErrors++;
	}

	FUNC0( renderCompletedEvent );
	FUNC0( renderCommandsEvent );

	data = smpData;

	// after this, the main thread can exit GLimp_WakeRenderer
	FUNC1( renderActiveEvent );

	return data;
}