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
typedef  int /*<<< orphan*/  GLenum ;
typedef  char GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 scalar_t__ GL_FALSE ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 char* FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

GLuint FUNC8(GLenum type, const char *source) {
    GLuint shader = FUNC4(type);
    FUNC7(shader, 1, &source, NULL);
    FUNC3(shader);
    GLint status;
    FUNC6(shader, GL_COMPILE_STATUS, &status);
    if (status == GL_FALSE) {
        GLint length;
        FUNC6(shader, GL_INFO_LOG_LENGTH, &length);
        GLchar *info = FUNC0(length, sizeof(GLchar));
        FUNC5(shader, length, NULL, info);
        FUNC1(stderr, "glCompileShader failed:\n%s\n", info);
        FUNC2(info);
    }
    return shader;
}