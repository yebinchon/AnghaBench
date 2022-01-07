
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_job_t ;
struct TYPE_3__ {int jobs; } ;
typedef TYPE_1__ hb_handle_t ;


 int hb_list_rem (int ,int *) ;

void hb_rem( hb_handle_t * h, hb_job_t * job )
{
    hb_list_rem( h->jobs, job );
}
