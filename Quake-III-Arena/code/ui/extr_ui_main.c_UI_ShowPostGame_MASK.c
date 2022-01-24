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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {int /*<<< orphan*/  soundHighScore; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIMENU_POSTGAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_1__ uiInfo ; 

void FUNC2(qboolean newHigh) {
	FUNC1 ("cg_cameraOrbit", "0");
	FUNC1("cg_thirdPerson", "0");
	FUNC1( "sv_killserver", "1" );
	uiInfo.soundHighScore = newHigh;
  FUNC0(UIMENU_POSTGAME);
}