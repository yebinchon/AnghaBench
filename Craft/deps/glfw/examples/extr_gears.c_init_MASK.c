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
typedef  float GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_AMBIENT_AND_DIFFUSE ; 
 int /*<<< orphan*/  GL_COMPILE ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_LIGHT0 ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_NORMALIZE ; 
 int /*<<< orphan*/  GL_POSITION ; 
 int /*<<< orphan*/  FUNC0 (float,float,float,int,float) ; 
 int /*<<< orphan*/  gear1 ; 
 int /*<<< orphan*/  gear2 ; 
 int /*<<< orphan*/  gear3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
  static GLfloat pos[4] = {5.f, 5.f, 10.f, 0.f};
  static GLfloat red[4] = {0.8f, 0.1f, 0.f, 1.f};
  static GLfloat green[4] = {0.f, 0.8f, 0.2f, 1.f};
  static GLfloat blue[4] = {0.2f, 0.2f, 1.f, 1.f};

  FUNC4(GL_LIGHT0, GL_POSITION, pos);
  FUNC1(GL_CULL_FACE);
  FUNC1(GL_LIGHTING);
  FUNC1(GL_LIGHT0);
  FUNC1(GL_DEPTH_TEST);

  /* make the gears */
  gear1 = FUNC3(1);
  FUNC6(gear1, GL_COMPILE);
  FUNC5(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, red);
  FUNC0(1.f, 4.f, 1.f, 20, 0.7f);
  FUNC2();

  gear2 = FUNC3(1);
  FUNC6(gear2, GL_COMPILE);
  FUNC5(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, green);
  FUNC0(0.5f, 2.f, 2.f, 10, 0.7f);
  FUNC2();

  gear3 = FUNC3(1);
  FUNC6(gear3, GL_COMPILE);
  FUNC5(GL_FRONT, GL_AMBIENT_AND_DIFFUSE, blue);
  FUNC0(1.3f, 2.f, 0.5f, 10, 0.7f);
  FUNC2();

  FUNC1(GL_NORMALIZE);
}