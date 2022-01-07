
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {TYPE_3__* fields; } ;
typedef TYPE_1__ ASSSection ;


 int FF_ARRAY_ELEMS (TYPE_3__*) ;
 int* av_malloc_array (int,int) ;

__attribute__((used)) static int *get_default_field_orders(const ASSSection *section, int *number)
{
    int i;
    int *order = av_malloc_array(FF_ARRAY_ELEMS(section->fields), sizeof(*order));

    if (!order)
        return ((void*)0);
    for (i = 0; section->fields[i].name; i++)
        order[i] = i;
    *number = i;
    while (i < FF_ARRAY_ELEMS(section->fields))
        order[i++] = -1;
    return order;
}
