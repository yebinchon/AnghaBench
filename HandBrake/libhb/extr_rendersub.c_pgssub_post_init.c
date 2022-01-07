
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_job_t ;
struct TYPE_4__ {int sub_list; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_5__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;


 int hb_list_init () ;

__attribute__((used)) static int pgssub_post_init( hb_filter_object_t * filter, hb_job_t * job )
{
    hb_filter_private_t * pv = filter->private_data;

    pv->sub_list = hb_list_init();

    return 0;
}
