#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {int characterCount; } ;
struct TYPE_3__ {scalar_t__ integer; } ;

/* Variables and functions */
 scalar_t__ GT_TEAM ; 
 int K_ENTER ; 
 int K_KP_ENTER ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int FUNC0 () ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 TYPE_2__ uiInfo ; 
 TYPE_1__ ui_actualNetGameType ; 
 char* FUNC3 (char*,int) ; 

__attribute__((used)) static qboolean FUNC4(int flags, float *special, int key, qboolean blue, int num) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
		// 0 - None
		// 1 - Human
		// 2..NumCharacters - Bot
		char *cvar = FUNC3(blue ? "ui_blueteam%i" : "ui_redteam%i", num);
		int value = FUNC2(cvar);

		if (key == K_MOUSE2) {
			value--;
		} else {
			value++;
		}

		if (ui_actualNetGameType.integer >= GT_TEAM) {
			if (value >= uiInfo.characterCount + 2) {
				value = 0;
			} else if (value < 0) {
				value = uiInfo.characterCount + 2 - 1;
			}
		} else {
			if (value >= FUNC0() + 2) {
				value = 0;
			} else if (value < 0) {
				value = FUNC0() + 2 - 1;
			}
		}

		FUNC1(cvar, FUNC3("%i", value));
    return qtrue;
  }
  return qfalse;
}