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
 int /*<<< orphan*/  EGL_EXTENSIONS ; 
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  EGL_READ ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_RENDERER ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_TEXTURE ; 
 int /*<<< orphan*/  GL_VENDOR ; 
 int /*<<< orphan*/  GL_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_Context ; 
 int /*<<< orphan*/  g_Display ; 
 int /*<<< orphan*/  g_Surface ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13()
{
   int error;
   char * buf;

   g_Display = FUNC1();
   g_Surface = FUNC2(EGL_READ);
   g_Context = FUNC0();

   FUNC10(GL_PROJECTION);
   FUNC9();
   FUNC11(0, 320, 224, 0, 1, 0);

   FUNC10(GL_MODELVIEW);
   FUNC9();

   FUNC10(GL_TEXTURE);
   FUNC9();

   FUNC7(GL_BLEND);
   FUNC6(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   FUNC12(FUNC8(GL_VENDOR));
   FUNC12(FUNC8(GL_RENDERER));
   FUNC12(FUNC8(GL_VERSION));
   FUNC12(FUNC8(GL_EXTENSIONS));
   FUNC12(FUNC4(g_Display,EGL_EXTENSIONS));
   FUNC5(g_Display,0);
   FUNC3(g_Display,EGL_NO_SURFACE,EGL_NO_SURFACE,EGL_NO_CONTEXT);
   return 0;
}