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
 char* FUNC0 () ; 
 void* FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(void **func, void *handle, char *symbol)
{
   char *sym_error;

   *func = FUNC1(handle, symbol);
   if ((sym_error = FUNC0()) != NULL)
   {
      FUNC2(stderr, "%s\n", sym_error);
      return -1;
   }
   return 0;
}