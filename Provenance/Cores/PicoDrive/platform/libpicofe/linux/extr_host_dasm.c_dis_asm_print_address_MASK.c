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
struct disassemble_info {int dummy; } ;
typedef  scalar_t__ bfd_vma ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(bfd_vma addr, struct disassemble_info *info)
{
  const char *name;

  FUNC1("%08x", (int)addr);

  name = FUNC0(addr);
  if (name != NULL)
    FUNC1(" <%s>", name);
}