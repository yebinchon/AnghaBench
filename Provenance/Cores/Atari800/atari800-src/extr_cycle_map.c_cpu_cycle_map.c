
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYCLE_MAP_SIZE ;

__attribute__((used)) static void cpu_cycle_map(char *antic_cycles_orig, int *cpu_cycles, int *actual_cycles)
{
 int i;
 char antic_cycles[CYCLE_MAP_SIZE];
 int antic_xpos;
 int cpu_xpos = 0;
 for (i = 0; i <= 113; i++)
  antic_cycles[i] = antic_cycles_orig[i];
 for (i = 114; i < CYCLE_MAP_SIZE; i++)
  antic_cycles[i] = '.';
 for (i = 0; i < CYCLE_MAP_SIZE; i++)
  cpu_cycles[i]=-1;
 for (antic_xpos = 0; antic_xpos < CYCLE_MAP_SIZE; antic_xpos++) {
  char c = antic_cycles[antic_xpos];
  actual_cycles[antic_xpos] = cpu_xpos;
  if (c != 'R' && c != 'S' && c != 'F' && c != 'I') {

   cpu_cycles[cpu_xpos] = antic_xpos;
   cpu_xpos++;
  }
 }
}
