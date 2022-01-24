#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* drmVersionPtr ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(void)
{
   drmVersionPtr ver;
   char buf[32]       = {0};
   int index          = 0;
   bool found         = false;

   while (!found)
   {
      int fd;

      FUNC4(buf, sizeof(buf), "/dev/dri/card%d", index);

      fd = FUNC3(buf, O_RDWR);
      if (fd < 0) break;

      ver = FUNC2(fd);

      if (FUNC5(ver->name, "exynos"))
         found = true;
      else
         ++index;

      FUNC1(ver);
      FUNC0(fd);
   }

   if (!found)
      return -1;
   return index;
}