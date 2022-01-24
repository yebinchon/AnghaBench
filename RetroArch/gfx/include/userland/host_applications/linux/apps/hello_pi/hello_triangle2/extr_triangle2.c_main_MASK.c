#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int screen_width; int screen_height; } ;
typedef  int GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,double,int,int) ; 
 int FUNC3 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* state ; 

int FUNC7 ()
{
   int terminate = 0;
   GLfloat cx, cy;
   FUNC0();

   // Clear application state
   FUNC6( state, 0, sizeof( *state ) );

   // Start OGLES
   FUNC4(state);
   FUNC5(state);
   cx = state->screen_width/2;
   cy = state->screen_height/2;

   FUNC1(state, cx, cy, 0.003);
   while (!terminate)
   {
      int x, y, b;
      b = FUNC3(state, &x, &y);
      if (b) break;
      FUNC2(state, cx, cy, 0.003, x, y);
   }
   return 0;
}