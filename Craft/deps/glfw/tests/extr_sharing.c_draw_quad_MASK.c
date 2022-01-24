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

/* Variables and functions */
 int /*<<< orphan*/  GL_MODULATE ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_ENV ; 
 int /*<<< orphan*/  GL_TEXTURE_ENV_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (float,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (float,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void FUNC13(GLuint texture)
{
    int width, height;
    FUNC12(FUNC11(), &width, &height);

    FUNC10(0, 0, width, height);

    FUNC5(GL_PROJECTION);
    FUNC4();
    FUNC6(0.f, 1.f, 0.f, 1.f, 0.f, 1.f);

    FUNC2(GL_TEXTURE_2D);
    FUNC1(GL_TEXTURE_2D, texture);
    FUNC8(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    FUNC0(GL_QUADS);

    FUNC7(0.f, 0.f);
    FUNC9(0.f, 0.f);

    FUNC7(1.f, 0.f);
    FUNC9(1.f, 0.f);

    FUNC7(1.f, 1.f);
    FUNC9(1.f, 1.f);

    FUNC7(0.f, 1.f);
    FUNC9(0.f, 1.f);

    FUNC3();
}