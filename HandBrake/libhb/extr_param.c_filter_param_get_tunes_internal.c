
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_filter_param_t ;
struct TYPE_2__ {int filter_id; int tune_count; int * tunes; } ;


 int HB_FILTER_INVALID ;
 TYPE_1__* param_map ;

__attribute__((used)) static hb_filter_param_t*
filter_param_get_tunes_internal(int filter_id, int *count)
{
    int ii;

    if (count != ((void*)0))
    {
        *count = 0;
    }
    for (ii = 0; param_map[ii].filter_id != HB_FILTER_INVALID; ii++)
    {
        if (param_map[ii].filter_id == filter_id)
        {
            if (count != ((void*)0))
            {
                *count = param_map[ii].tune_count;
            }
            return param_map[ii].tunes;
        }
    }
    return ((void*)0);
}
