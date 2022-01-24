#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float member_0; float member_1; float member_2; } ;
typedef  TYPE_1__ vec3 ;
typedef  scalar_t__ mat4x4 ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  RADIUS ; 
 float VIEW_SCENE_DIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,float,float,float,float) ; 

void FUNC6( GLFWwindow* window, int w, int h )
{
   mat4x4 projection, view;

   FUNC3( 0, 0, (GLsizei)w, (GLsizei)h );

   FUNC2( GL_PROJECTION );
   FUNC5( projection,
                       2.f * (float) FUNC0( RADIUS, 200.f ),
                       (float)w / (float)h,
                       1.f, VIEW_SCENE_DIST );
   FUNC1((const GLfloat*) projection);

   FUNC2( GL_MODELVIEW );
   {
      vec3 eye = { 0.f, 0.f, VIEW_SCENE_DIST };
      vec3 center = { 0.f, 0.f, 0.f };
      vec3 up = { 0.f, -1.f, 0.f };
      FUNC4( view, eye, center, up );
   }
   FUNC1((const GLfloat*) view);
}