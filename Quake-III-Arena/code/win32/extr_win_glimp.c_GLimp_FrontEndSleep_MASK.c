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
struct TYPE_2__ {int /*<<< orphan*/  hGLRC; int /*<<< orphan*/  hDC; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ glw_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  renderCompletedEvent ; 
 int /*<<< orphan*/  wglErrors ; 

void FUNC2( void ) {
	FUNC0( renderCompletedEvent, INFINITE );

	if ( !FUNC1( glw_state.hDC, glw_state.hGLRC ) ) {
		wglErrors++;
	}
}