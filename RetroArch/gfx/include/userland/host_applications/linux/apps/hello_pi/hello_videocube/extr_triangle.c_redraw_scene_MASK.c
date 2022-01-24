#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  display; } ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float,float) ; 

__attribute__((used)) static void FUNC4(CUBE_STATE_T *state)
{
   // Start with a clear screen
   FUNC1( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

   // Need to rotate textures - do this by rotating each cube face
   FUNC3(270.f, 0.f, 0.f, 1.f ); // front face normal along z axis

   // draw first 4 vertices
   FUNC2( GL_TRIANGLE_STRIP, 0, 4);

   // same pattern for other 5 faces - rotation chosen to make image orientation 'nice'
   FUNC3(90.f, 0.f, 0.f, 1.f ); // back face normal along z axis
   FUNC2( GL_TRIANGLE_STRIP, 4, 4);

   FUNC3(90.f, 1.f, 0.f, 0.f ); // left face normal along x axis
   FUNC2( GL_TRIANGLE_STRIP, 8, 4);

   FUNC3(90.f, 1.f, 0.f, 0.f ); // right face normal along x axis
   FUNC2( GL_TRIANGLE_STRIP, 12, 4);

   FUNC3(270.f, 0.f, 1.f, 0.f ); // top face normal along y axis
   FUNC2( GL_TRIANGLE_STRIP, 16, 4);

   FUNC3(90.f, 0.f, 1.f, 0.f ); // bottom face normal along y axis
   FUNC2( GL_TRIANGLE_STRIP, 20, 4);

   FUNC0(state->display, state->surface);
}