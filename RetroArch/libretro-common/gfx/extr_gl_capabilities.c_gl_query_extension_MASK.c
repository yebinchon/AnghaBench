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
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_NUM_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

bool FUNC5(const char *ext)
{
   bool ret = false;

   if (FUNC3())
   {
#ifdef GL_NUM_EXTENSIONS
      GLint i;
      GLint exts = 0;
      glGetIntegerv(GL_NUM_EXTENSIONS, &exts);
      for (i = 0; i < exts; i++)
      {
         const char *str = (const char*)glGetStringi(GL_EXTENSIONS, i);
         if (str && strstr(str, ext))
         {
            ret = true;
            break;
         }
      }
#endif
   }
   else
   {
      const char *str = (const char*)FUNC1(GL_EXTENSIONS);
      ret = str && FUNC4(str, ext);
   }

   return ret;
}