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
typedef  int /*<<< orphan*/  file_list_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC6(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   unsigned j = 0;
   char buf[4096];

   buf[0] = '\0';

   for (j = 0; j < FUNC1(); j++)
   {
      FUNC4(buf, "   ", sizeof(buf));
      FUNC4(buf, FUNC2(FUNC0(j)), sizeof(buf));
      if (j != FUNC1() - 1)
         FUNC4(buf, "\n", sizeof(buf));
   }

   if (!FUNC3(buf))
      FUNC5(s, buf, len);

   return 0;
}