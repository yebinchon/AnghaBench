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
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

GLboolean FUNC2 (int argc, char** argv, char** display, int* visual)
{
  int p = 0;
  while (p < argc)
  {
#if defined(_WIN32)
    if (!strcmp(argv[p], "-pf") || !strcmp(argv[p], "-pixelformat"))
    {
      if (++p >= argc) return GL_TRUE;
      *display = 0;
      *visual = strtol(argv[p++], NULL, 0);
    }
    else
      return GL_TRUE;
#else
    if (!FUNC0(argv[p], "-display"))
    {
      if (++p >= argc) return GL_TRUE;
      *display = argv[p++];
    }
    else if (!FUNC0(argv[p], "-visual"))
    {
      if (++p >= argc) return GL_TRUE;
      *visual = (int)FUNC1(argv[p++], NULL, 0);
    }
    else
      return GL_TRUE;
#endif
  }
  return GL_FALSE;
}