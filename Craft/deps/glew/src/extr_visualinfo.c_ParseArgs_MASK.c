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
 char* display ; 
 int displaystdout ; 
 int showall ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int visual ; 

GLboolean FUNC2 (int argc, char** argv)
{
  int p = 0;
  while (p < argc)
  {
#if defined(_WIN32)
    if (!strcmp(argv[p], "-pf") || !strcmp(argv[p], "-pixelformat"))
    {
      if (++p >= argc) return GL_TRUE;
      display = NULL;
      visual = strtol(argv[p], NULL, 0);
    }
    else if (!strcmp(argv[p], "-a"))
    {
      showall = 1;
    }
    else if (!strcmp(argv[p], "-s"))
    {
      displaystdout = 1;
    }
    else if (!strcmp(argv[p], "-h"))
    {
      return GL_TRUE;
    }
    else
      return GL_TRUE;
#else
    if (!FUNC0(argv[p], "-display"))
    {
      if (++p >= argc) return GL_TRUE;
      display = argv[p];
    }
    else if (!FUNC0(argv[p], "-visual"))
    {
      if (++p >= argc) return GL_TRUE;
      visual = (int)FUNC1(argv[p], NULL, 0);
    }
    else if (!FUNC0(argv[p], "-h"))
    {
      return GL_TRUE;
    }
    else
      return GL_TRUE;
#endif
    p++;
  }
  return GL_FALSE;
}