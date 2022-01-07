
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* sub_filter; scalar_t__ settings; } ;
typedef TYPE_1__ hb_filter_object_t ;


 scalar_t__ hb_value_dup (scalar_t__) ;
 TYPE_1__* malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

hb_filter_object_t * hb_filter_copy( hb_filter_object_t * filter )
{
    if( filter == ((void*)0) )
        return ((void*)0);

    hb_filter_object_t * filter_copy = malloc( sizeof( hb_filter_object_t ) );
    memcpy( filter_copy, filter, sizeof( hb_filter_object_t ) );
    if( filter->settings )
        filter_copy->settings = hb_value_dup(filter->settings);
    filter_copy->sub_filter = hb_filter_copy(filter->sub_filter);
    return filter_copy;
}
