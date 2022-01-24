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
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int K_ENTER ; 
 int K_KP_ENTER ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static qboolean FUNC4(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
    int h;
    h = FUNC0( 5, 100, FUNC2("handicap") );
		if (key == K_MOUSE2) {
	    h -= 5;
		} else {
	    h += 5;
		}
    if (h > 100) {
      h = 5;
    } else if (h < 0) {
			h = 100;
		}
  	FUNC1( "handicap", FUNC3( "%i", h) );
    return qtrue;
  }
  return qfalse;
}