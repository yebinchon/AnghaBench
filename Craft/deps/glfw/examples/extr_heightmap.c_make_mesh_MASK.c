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
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_DYNAMIC_DRAW ; 
 int /*<<< orphan*/  GL_ELEMENT_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int MAP_NUM_LINES ; 
 int MAP_NUM_TOTAL_VERTICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * map_line_indices ; 
 int /*<<< orphan*/ ** map_vertices ; 
 int /*<<< orphan*/  mesh ; 
 int /*<<< orphan*/ * mesh_vbo ; 

__attribute__((used)) static void FUNC8(GLuint program)
{
    GLuint attrloc;

    FUNC5(1, &mesh);
    FUNC4(4, mesh_vbo);
    FUNC1(mesh);
    /* Prepare the data for drawing through a buffer inidices */
    FUNC0(GL_ELEMENT_ARRAY_BUFFER, mesh_vbo[3]);
    FUNC2(GL_ELEMENT_ARRAY_BUFFER, sizeof(GLuint)* MAP_NUM_LINES * 2, map_line_indices, GL_STATIC_DRAW);

    /* Prepare the attributes for rendering */
    attrloc = FUNC6(program, "x");
    FUNC0(GL_ARRAY_BUFFER, mesh_vbo[0]);
    FUNC2(GL_ARRAY_BUFFER, sizeof(GLfloat) * MAP_NUM_TOTAL_VERTICES, &map_vertices[0][0], GL_STATIC_DRAW);
    FUNC3(attrloc);
    FUNC7(attrloc, 1, GL_FLOAT, GL_FALSE, 0, 0);

    attrloc = FUNC6(program, "z");
    FUNC0(GL_ARRAY_BUFFER, mesh_vbo[2]);
    FUNC2(GL_ARRAY_BUFFER, sizeof(GLfloat) * MAP_NUM_TOTAL_VERTICES, &map_vertices[2][0], GL_STATIC_DRAW);
    FUNC3(attrloc);
    FUNC7(attrloc, 1, GL_FLOAT, GL_FALSE, 0, 0);

    attrloc = FUNC6(program, "y");
    FUNC0(GL_ARRAY_BUFFER, mesh_vbo[1]);
    FUNC2(GL_ARRAY_BUFFER, sizeof(GLfloat) * MAP_NUM_TOTAL_VERTICES, &map_vertices[1][0], GL_DYNAMIC_DRAW);
    FUNC3(attrloc);
    FUNC7(attrloc, 1, GL_FLOAT, GL_FALSE, 0, 0);
}