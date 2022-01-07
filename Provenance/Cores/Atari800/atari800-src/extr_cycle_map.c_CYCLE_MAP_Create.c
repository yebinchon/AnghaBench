
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYCLE_MAP_SIZE ;
 int* CYCLE_MAP_antic2cpu ;
 int* CYCLE_MAP_cpu2antic ;
 int antic_steal_map (int,int ,int ,int ,int ,int ,char*,int*,int*) ;
 int printf (char*,...) ;
 int try_all_scroll (int,int,int,int,int*,int*) ;

void CYCLE_MAP_Create(void)
{





 char antic_cycles[115];
 int k = 0;
 antic_steal_map(1, 0, 0, 0, 0, 0, antic_cycles, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
 k = CYCLE_MAP_SIZE * (17 * 0 + 1);
 try_all_scroll(0, 1, 1, 0, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
 k = CYCLE_MAP_SIZE * (17 * 1 + 1);
 try_all_scroll(0, 0, 1, 0, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
 k = CYCLE_MAP_SIZE * (17 * 2 + 1);
 try_all_scroll(1, 1, 1, 0, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
 k = CYCLE_MAP_SIZE * (17 * 3 + 1);
 try_all_scroll(1, 0, 1, 0, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
 k = CYCLE_MAP_SIZE * (17 * 4 + 1);
 try_all_scroll(0, 0, 0, 1, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
 k = CYCLE_MAP_SIZE * (17 * 5 + 1);
 try_all_scroll(1, 0, 0, 1, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
 k = CYCLE_MAP_SIZE * (17 * 6 + 1);
 try_all_scroll(2, 0, 0, 1, &CYCLE_MAP_cpu2antic[k], &CYCLE_MAP_antic2cpu[k]);
}
