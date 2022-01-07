
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffers; int allocated; } ;
typedef TYPE_1__ rmt_obj_t ;


 TYPE_1__* g_rmt_objects ;

__attribute__((used)) static rmt_obj_t* _rmtAllocate(int pin, int from, int size)
{
    size_t i;

    g_rmt_objects[from].buffers = size;

    for (i=0; i<size; i++) {

        g_rmt_objects[i+from].allocated = 1;
    }
    return &(g_rmt_objects[from]);
}
