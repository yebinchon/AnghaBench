
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int address; int size; struct TYPE_3__* next; } ;
typedef TYPE_1__ s_mem_area ;


 TYPE_1__* MEM_AREA_TABLE ;

__attribute__((used)) static inline void memoryAddArea(int start, int end, int cur_index)
{

    s_mem_area * mem_area = MEM_AREA_TABLE;
    mem_area[cur_index].address = start;
    mem_area[cur_index].size = end - start;
    mem_area[cur_index].next = 0;


    if (cur_index > 0)
    {
        mem_area[cur_index - 1].next = &mem_area[cur_index];
    }
}
