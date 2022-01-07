
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdb_cpu {void const* context; } ;


 int pdb_cpu_count ;
 struct pdb_cpu* pdb_cpus ;

__attribute__((used)) static struct pdb_cpu *context2cpu(const void *context)
{
  int i;
  for (i = 0; i < pdb_cpu_count; i++)
    if (pdb_cpus[i].context == context)
      return &pdb_cpus[i];
  return ((void*)0);
}
