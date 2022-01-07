
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; int post_processing; struct TYPE_5__* yadif_arguments; scalar_t__ tmpc; scalar_t__ cxy; scalar_t__ cy2; scalar_t__ cx2; int * eedi_full; int * eedi_half; int * ref; int eedi2_taskset; int yadif_taskset; int frames; int unfiltered; int blended; int deinterlaced; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;


 int MODE_DECOMB_EEDI2 ;
 int eedi2_aligned_free (scalar_t__) ;
 int free (TYPE_1__*) ;
 int hb_buffer_close (int *) ;
 int hb_log (char*,int ,int ,int ,int ) ;
 int taskset_fini (int *) ;

__attribute__((used)) static void hb_decomb_close( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if( !pv )
    {
        return;
    }

    hb_log("decomb: deinterlaced %i | blended %i | unfiltered %i | total %i",
           pv->deinterlaced, pv->blended, pv->unfiltered, pv->frames);

    taskset_fini( &pv->yadif_taskset );

    if( pv->mode & MODE_DECOMB_EEDI2 )
    {
        taskset_fini( &pv->eedi2_taskset );
    }


    int ii;
    for (ii = 0; ii < 3; ii++)
    {
        hb_buffer_close(&pv->ref[ii]);
    }

    if( pv->mode & MODE_DECOMB_EEDI2 )
    {

        int ii;
        for( ii = 0; ii < 4; ii++ )
        {
            hb_buffer_close(&pv->eedi_half[ii]);
        }


        for( ii = 0; ii < 5; ii++ )
        {
            hb_buffer_close(&pv->eedi_full[ii]);
        }
    }

    if( pv->post_processing > 1 && ( pv->mode & MODE_DECOMB_EEDI2 ) )
    {
        if (pv->cx2) eedi2_aligned_free(pv->cx2);
        if (pv->cy2) eedi2_aligned_free(pv->cy2);
        if (pv->cxy) eedi2_aligned_free(pv->cxy);
        if (pv->tmpc) eedi2_aligned_free(pv->tmpc);
    }




    free( pv->yadif_arguments );

    free( pv );
    filter->private_data = ((void*)0);
}
