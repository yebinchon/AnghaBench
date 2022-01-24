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
struct pdb_cpu {void const* context; } ;

/* Variables and functions */
 int pdb_cpu_count ; 
 struct pdb_cpu* pdb_cpus ; 

__attribute__((used)) static struct pdb_cpu *FUNC0(const void *context)
{
  int i;
  for (i = 0; i < pdb_cpu_count; i++)
    if (pdb_cpus[i].context == context)
      return &pdb_cpus[i];
  return NULL;
}