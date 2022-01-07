
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int list_filter; } ;
typedef TYPE_2__ hb_job_t ;
struct TYPE_12__ {scalar_t__ id; scalar_t__ enforce_order; TYPE_1__* sub_filter; int const* settings; } ;
typedef TYPE_3__ hb_filter_object_t ;
typedef int const hb_dict_t ;
struct TYPE_10__ {void* settings; } ;


 int const* hb_dict_init () ;
 int hb_filter_close (TYPE_3__**) ;
 int hb_list_add (int ,TYPE_3__*) ;
 int hb_list_count (int ) ;
 int hb_list_insert (int ,int,TYPE_3__*) ;
 TYPE_3__* hb_list_item (int ,int) ;
 void* hb_value_dup (int const*) ;

void hb_add_filter_dict( hb_job_t * job, hb_filter_object_t * filter,
                         const hb_dict_t * settings_in )
{
    hb_dict_t * settings;


    if (settings_in == ((void*)0))
    {
        settings = hb_dict_init();
    }
    else
    {
        settings = hb_value_dup(settings_in);
    }
    filter->settings = settings;
    if (filter->sub_filter)
    {
        filter->sub_filter->settings = hb_value_dup(settings);
    }
    if( filter->enforce_order )
    {

        int i;
        for( i = 0; i < hb_list_count( job->list_filter ); i++ )
        {
            hb_filter_object_t * f = hb_list_item( job->list_filter, i );
            if( f->id > filter->id )
            {
                hb_list_insert( job->list_filter, i, filter );
                return;
            }
            else if( f->id == filter->id )
            {

                hb_filter_close( &filter );
                return;
            }
        }
    }

    hb_list_add( job->list_filter, filter );
}
