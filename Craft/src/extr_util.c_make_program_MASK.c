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
typedef  scalar_t__ GLint ;
typedef  char GLchar ;

/* Variables and functions */
 scalar_t__ GL_FALSE ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 char* FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

GLuint FUNC10(GLuint shader1, GLuint shader2) {
    GLuint program = FUNC4();
    FUNC3(program, shader1);
    FUNC3(program, shader2);
    FUNC9(program);
    GLint status;
    FUNC8(program, GL_LINK_STATUS, &status);
    if (status == GL_FALSE) {
        GLint length;
        FUNC8(program, GL_INFO_LOG_LENGTH, &length);
        GLchar *info = FUNC0(length, sizeof(GLchar));
        FUNC7(program, length, NULL, info);
        FUNC1(stderr, "glLinkProgram failed: %s\n", info);
        FUNC2(info);
    }
    FUNC6(program, shader1);
    FUNC6(program, shader2);
    FUNC5(shader1);
    FUNC5(shader2);
    return program;
}