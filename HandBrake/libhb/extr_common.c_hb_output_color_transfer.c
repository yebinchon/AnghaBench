
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ color_transfer_override; int color_transfer; } ;
typedef TYPE_1__ hb_job_t ;


 scalar_t__ HB_COLR_TRA_UNDEF ;

int hb_output_color_transfer(hb_job_t * job)
{
    if (job->color_transfer_override != HB_COLR_TRA_UNDEF)
        return job->color_transfer_override;
    else
        return job->color_transfer;
}
