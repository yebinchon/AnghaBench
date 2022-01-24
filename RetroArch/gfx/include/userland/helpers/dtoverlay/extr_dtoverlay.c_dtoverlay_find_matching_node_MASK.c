#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 

int FUNC4(DTBLOB_T *dtb, const char **node_names,
                                 int pos)
{
   while (1)
   {
      const char *node_name;
      pos = FUNC1(dtb->fdt, pos, NULL);
      if (pos < 0)
         break;
      node_name = FUNC0(dtb->fdt, pos, NULL);
      if (node_name)
      {
         int i;
         for (i = 0; node_names[i]; i++)
         {
            const char *node = node_names[i];
            int matchlen = FUNC2(node);
            if ((FUNC3(node_name, node, matchlen) == 0) &&
                ((node[matchlen] == '\0') ||
                 (node[matchlen] == '@')))
               return pos;
         }
      }
   }
   return -1;
}