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
typedef  scalar_t__ bfd_vma ;

/* Variables and functions */
 int /*<<< orphan*/  di ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  init_done ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(void *addr, int len)
{
  bfd_vma vma_end, vma = (bfd_vma)(long)addr;
  const char *name;

  if (!init_done)
    FUNC0();

  vma_end = vma + len;
  while (vma < vma_end) {
    name = FUNC1(vma);
    if (name != NULL)
      FUNC3("%s:\n", name);

    FUNC3("   %08lx ", (long)vma);
    vma += FUNC2(vma, &di);
    FUNC3("\n");
  }
}