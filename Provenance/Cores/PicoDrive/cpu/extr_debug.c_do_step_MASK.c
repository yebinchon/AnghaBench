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
struct pdb_cpu {int icount; } ;

/* Variables and functions */
 int FUNC0 (struct pdb_cpu*,char const*) ; 

__attribute__((used)) static int FUNC1(struct pdb_cpu *cpu, const char *args)
{
  cpu->icount = 1;
  return FUNC0(cpu, args);
}