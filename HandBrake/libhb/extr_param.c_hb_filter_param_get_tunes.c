
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_filter_param_t ;


 int * filter_param_get_tunes_internal (int,int *) ;

hb_filter_param_t* hb_filter_param_get_tunes(int filter_id)
{
    return filter_param_get_tunes_internal(filter_id, ((void*)0));
}
