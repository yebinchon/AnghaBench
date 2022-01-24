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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int K_ENTER ; 
 int K_KP_ENTER ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int numSkillLevels ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static qboolean FUNC3(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
  	int i = FUNC1( "g_spSkill" );

		if (key == K_MOUSE2) {
	    i--;
		} else {
	    i++;
		}

    if (i < 1) {
			i = numSkillLevels;
		} else if (i > numSkillLevels) {
      i = 1;
    }

    FUNC0("g_spSkill", FUNC2("%i", i));
    return qtrue;
  }
  return qfalse;
}