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
typedef  int /*<<< orphan*/  tmp ;
struct pdb_cpu {int /*<<< orphan*/  icount; } ;

/* Variables and functions */
 int CMDRET_CONT_DO_NEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int,char const*) ; 

__attribute__((used)) static int FUNC2(struct pdb_cpu *cpu, const char *args)
{
  char tmp[32];
  if (FUNC1(tmp, sizeof(tmp), args))
    cpu->icount = FUNC0(tmp);
  return CMDRET_CONT_DO_NEXT;
}