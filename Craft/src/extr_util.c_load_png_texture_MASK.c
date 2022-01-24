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
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 unsigned int FUNC5 (unsigned char**,unsigned int*,unsigned int*,char const*) ; 
 char* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC7(const char *file_name) {
    unsigned int error;
    unsigned char *data;
    unsigned int width, height;
    error = FUNC5(&data, &width, &height, file_name);
    if (error) {
        FUNC2(stderr, "load_png_texture %s failed, error %u: %s\n", file_name, error, FUNC6(error));
        FUNC0(1);
    }
    FUNC1(data, width, height);
    FUNC4(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA,
        GL_UNSIGNED_BYTE, data);
    FUNC3(data);
}