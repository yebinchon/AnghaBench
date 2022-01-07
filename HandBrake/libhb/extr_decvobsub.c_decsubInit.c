
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int palette_set; scalar_t__ pts; int * job; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_8__ {TYPE_1__* subtitle; TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
typedef int hb_job_t ;
struct TYPE_6__ {int palette_set; scalar_t__* palette; } ;


 TYPE_2__* calloc (int,int) ;
 int hb_log (char*) ;

int decsubInit( hb_work_object_t * w, hb_job_t * job )
{
    hb_work_private_t * pv;

    pv = calloc( 1, sizeof( hb_work_private_t ) );
    w->private_data = pv;

    pv->job = job;
    pv->pts = 0;


    pv->palette_set = w->subtitle->palette_set;
    if ( pv->palette_set )
    {

        pv->palette_set = 0;
        int i;
        for (i=0; i<16; i++)
        {
            if (w->subtitle->palette[i])
            {
                pv->palette_set = 1;
                break;
            }
        }
    }
    if (!pv->palette_set) {
        hb_log( "decvobsub: input color palette is empty!" );
    }

    return 0;
}
