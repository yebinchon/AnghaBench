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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_UNSIGNED_INT ; 
 int QUADNUM ; 
 int /*<<< orphan*/  alpha ; 
 int /*<<< orphan*/  beta ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/  FUNC5 (double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  quad ; 
 int /*<<< orphan*/  zoom ; 

void FUNC7(GLFWwindow* window)
{
    // Clear the color and depth buffers
    FUNC0(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // We don't want to modify the projection matrix
    FUNC3(GL_MODELVIEW);
    FUNC2();

    // Move back
    FUNC5(0.0, 0.0, -zoom);
    // Rotate the view
    FUNC4(beta, 1.0, 0.0, 0.0);
    FUNC4(alpha, 0.0, 0.0, 1.0);

    FUNC1(GL_QUADS, 4 * QUADNUM, GL_UNSIGNED_INT, quad);

    FUNC6(window);
}