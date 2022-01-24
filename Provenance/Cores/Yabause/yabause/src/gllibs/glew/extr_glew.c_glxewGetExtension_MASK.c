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
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GLX_EXTENSIONS ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

GLboolean FUNC4 (const char* name)
{    
  const GLubyte* start;
  const GLubyte* end;

  if (&glXGetCurrentDisplay == NULL) return GL_FALSE;
  start = (const GLubyte*)FUNC2(FUNC3(), GLX_EXTENSIONS);
  if (0 == start) return GL_FALSE;
  end = start + FUNC1(start);
  return FUNC0(name, start, end);
}