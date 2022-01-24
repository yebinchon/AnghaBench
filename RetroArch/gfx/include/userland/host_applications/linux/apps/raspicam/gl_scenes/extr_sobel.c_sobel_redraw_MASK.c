#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * attribute_locations; int /*<<< orphan*/  program; } ;
struct TYPE_4__ {int /*<<< orphan*/  y_texture; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_TEXTURE0 ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quad_vbo ; 
 TYPE_2__ sobel_shader ; 

__attribute__((used)) static int FUNC9(RASPITEX_STATE* state)
{
   FUNC4(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   FUNC0(FUNC7(sobel_shader.program));

   /* Bind the Y plane texture */
   FUNC0(FUNC1(GL_TEXTURE0));
   FUNC0(FUNC3(GL_TEXTURE_EXTERNAL_OES, state->y_texture));
   FUNC0(FUNC2(GL_ARRAY_BUFFER, quad_vbo));
   FUNC0(FUNC6(sobel_shader.attribute_locations[0]));
   FUNC0(FUNC8(sobel_shader.attribute_locations[0], 2, GL_FLOAT, GL_FALSE, 0, 0));
   FUNC0(FUNC5(GL_TRIANGLES, 0, 6));

   return 0;
}