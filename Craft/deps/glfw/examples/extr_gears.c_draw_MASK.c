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
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 float angle ; 
 int /*<<< orphan*/  gear1 ; 
 int /*<<< orphan*/  gear2 ; 
 int /*<<< orphan*/  gear3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (float,float,float) ; 
 float view_rotx ; 
 float view_roty ; 
 float view_rotz ; 

__attribute__((used)) static void FUNC6(void)
{
  FUNC1(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

  FUNC3();
    FUNC4(view_rotx, 1.0, 0.0, 0.0);
    FUNC4(view_roty, 0.0, 1.0, 0.0);
    FUNC4(view_rotz, 0.0, 0.0, 1.0);

    FUNC3();
      FUNC5(-3.0, -2.0, 0.0);
      FUNC4(angle, 0.0, 0.0, 1.0);
      FUNC0(gear1);
    FUNC2();

    FUNC3();
      FUNC5(3.1f, -2.f, 0.f);
      FUNC4(-2.f * angle - 9.f, 0.f, 0.f, 1.f);
      FUNC0(gear2);
    FUNC2();

    FUNC3();
      FUNC5(-3.1f, 4.2f, 0.f);
      FUNC4(-2.f * angle - 25.f, 0.f, 0.f, 1.f);
      FUNC0(gear3);
    FUNC2();

  FUNC2();
}