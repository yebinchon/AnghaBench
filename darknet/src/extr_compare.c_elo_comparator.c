
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* elos; } ;
typedef TYPE_1__ sortable_bbox ;


 size_t current_class ;

int elo_comparator(const void*a, const void *b)
{
    sortable_bbox box1 = *(sortable_bbox*)a;
    sortable_bbox box2 = *(sortable_bbox*)b;
    if(box1.elos[current_class] == box2.elos[current_class]) return 0;
    if(box1.elos[current_class] > box2.elos[current_class]) return -1;
    return 1;
}
