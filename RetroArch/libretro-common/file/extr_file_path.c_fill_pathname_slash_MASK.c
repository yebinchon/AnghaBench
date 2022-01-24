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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (char*) ; 

void FUNC4(char *path, size_t size)
{
   size_t path_len;
   const char *last_slash = FUNC0(path);

   if (!last_slash)
   {
      FUNC2(path, FUNC1(), size);
      return;
   }

   path_len               = FUNC3(path);
   /* Try to preserve slash type. */
   if (last_slash != (path + path_len - 1))
   {
      path[path_len]   = last_slash[0];
      path[path_len+1] = '\0';
   }
}