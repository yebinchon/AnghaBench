
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int end_address; scalar_t__ start_address; } ;
typedef TYPE_1__ memory_values_t ;


 scalar_t__ getApplicationEndAddr () ;
 TYPE_1__* mem_vals_540 ;
 int memoryAddArea (scalar_t__,int,int) ;

__attribute__((used)) static void memoryInitAreaTable(u32 args_size)
{
    u32 ApplicationMemoryEnd = (u32)getApplicationEndAddr() + args_size;



    memoryAddArea(ApplicationMemoryEnd + 0x30000000, 0x30000000 + 0x01E20000, 0);

    const memory_values_t * mem_vals = mem_vals_540;


    int i = 0;
    while (mem_vals[i].start_address)
    {
        memoryAddArea(mem_vals[i].start_address, mem_vals[i].end_address, i + 1);
        i++;
    }
}
