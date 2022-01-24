#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dc; } ;
typedef  int GLenum ;
typedef  TYPE_1__ GLContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int GLEW_OK ; 
 int /*<<< orphan*/  GLU_EXTENSIONS ; 
 int /*<<< orphan*/  GLU_VERSION ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_RENDERER ; 
 scalar_t__ GL_TRUE ; 
 int /*<<< orphan*/  GL_VENDOR ; 
 int /*<<< orphan*/  GL_VERSION ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ WGLEW_ARB_extensions_string ; 
 scalar_t__ WGLEW_EXT_extensions_string ; 
 int /*<<< orphan*/  displaystdout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * file ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ glewExperimental ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* FUNC15 (int) ; 
 int FUNC16 () ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 

int 
FUNC24 (int argc, char** argv)
{
  GLenum err;
  GLContext ctx;

  /* ---------------------------------------------------------------------- */
  /* parse arguments */
  if (GL_TRUE == FUNC4(argc-1, argv+1))
  {
#if defined(_WIN32)
    fprintf(stderr, "Usage: visualinfo [-a] [-s] [-h] [-pf <id>]\n");
    fprintf(stderr, "        -a: show all visuals\n");
    fprintf(stderr, "        -s: display to stdout instead of visualinfo.txt\n");
    fprintf(stderr, "        -pf <id>: use given pixelformat\n");
    fprintf(stderr, "        -h: this screen\n");
#else
    FUNC9(stderr, "Usage: visualinfo [-h] [-display <display>] [-visual <id>]\n");
    FUNC9(stderr, "        -h: this screen\n");
    FUNC9(stderr, "        -display <display>: use given display\n");
    FUNC9(stderr, "        -visual <id>: use given visual\n");
#endif
    return 1;
  }

  /* ---------------------------------------------------------------------- */
  /* create OpenGL rendering context */
  FUNC3(&ctx);
  if (GL_TRUE == FUNC0(&ctx))
  {
    FUNC9(stderr, "Error: CreateContext failed\n");
    FUNC2(&ctx);
    return 1;
  }

  /* ---------------------------------------------------------------------- */
  /* initialize GLEW */
  glewExperimental = GL_TRUE;
#ifdef GLEW_MX
  err = glewContextInit(glewGetContext());
#  ifdef _WIN32
  err = err || wglewContextInit(wglewGetContext());
#  elif !defined(__APPLE__) || defined(GLEW_APPLE_GLX)
  err = err || glxewContextInit(glxewGetContext());
#  endif
#else
  err = FUNC16();
#endif
  if (GLEW_OK != err)
  {
    FUNC9(stderr, "Error [main]: glewInit failed: %s\n", FUNC15(err));
    FUNC2(&ctx);
    return 1;
  }

  /* ---------------------------------------------------------------------- */
  /* open file */
#if defined(_WIN32)
  if (!displaystdout) 
    file = fopen("visualinfo.txt", "w");
  if (file == NULL)
    file = stdout;
#else
  file = stdout;
#endif

  /* ---------------------------------------------------------------------- */
  /* output header information */
  /* OpenGL extensions */
  FUNC9(file, "OpenGL vendor string: %s\n", FUNC10(GL_VENDOR));
  FUNC9(file, "OpenGL renderer string: %s\n", FUNC10(GL_RENDERER));
  FUNC9(file, "OpenGL version string: %s\n", FUNC10(GL_VERSION));
  FUNC9(file, "OpenGL extensions (GL_): \n");
  FUNC5((char*)FUNC10(GL_EXTENSIONS));

#ifndef GLEW_NO_GLU
  /* GLU extensions */
  FUNC9(file, "GLU version string: %s\n", FUNC17(GLU_VERSION));
  FUNC9(file, "GLU extensions (GLU_): \n");
  FUNC5((char*)FUNC17(GLU_EXTENSIONS));
#endif

  /* ---------------------------------------------------------------------- */
  /* extensions string */
#if defined(_WIN32)
  /* WGL extensions */
  if (WGLEW_ARB_extensions_string || WGLEW_EXT_extensions_string)
  {
    fprintf(file, "WGL extensions (WGL_): \n");
    PrintExtensions(wglGetExtensionsStringARB ? 
                    (char*)wglGetExtensionsStringARB(ctx.dc) :
		    (char*)wglGetExtensionsStringEXT());
  }
#elif defined(__APPLE__) && !defined(GLEW_APPLE_GLX)
  
#else
  /* GLX extensions */
  FUNC9(file, "GLX extensions (GLX_): \n");
  FUNC5(FUNC12(FUNC11(), 
                                           FUNC1(FUNC11())));
#endif

  /* ---------------------------------------------------------------------- */
  /* enumerate all the formats */
  FUNC6(&ctx);

  /* ---------------------------------------------------------------------- */
  /* release resources */
  FUNC2(&ctx);
  if (file != stdout)
    FUNC7(file);
  return 0;
}