
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_list_t ;
struct TYPE_4__ {scalar_t__ vquality; int pass_id; scalar_t__ twopass; scalar_t__ indepth_scan; } ;
typedef TYPE_1__ hb_job_t ;
typedef int hb_handle_t ;


 scalar_t__ HB_INVALID_VIDEO_QUALITY ;
 int HB_PASS_ENCODE ;
 int HB_PASS_ENCODE_1ST ;
 int HB_PASS_ENCODE_2ND ;
 int HB_PASS_SUBTITLE ;
 int hb_add_internal (int *,TYPE_1__*,int *) ;
 int hb_deep_log (int,char*) ;

void hb_job_setup_passes(hb_handle_t * h, hb_job_t * job, hb_list_t * list_pass)
{
    if (job->vquality > HB_INVALID_VIDEO_QUALITY)
    {
        job->twopass = 0;
    }
    if (job->indepth_scan)
    {
        hb_deep_log(2, "Adding subtitle scan pass");
        job->pass_id = HB_PASS_SUBTITLE;
        hb_add_internal(h, job, list_pass);
        job->indepth_scan = 0;
    }
    if (job->twopass)
    {
        hb_deep_log(2, "Adding two-pass encode");
        job->pass_id = HB_PASS_ENCODE_1ST;
        hb_add_internal(h, job, list_pass);
        job->pass_id = HB_PASS_ENCODE_2ND;
        hb_add_internal(h, job, list_pass);
    }
    else
    {
        job->pass_id = HB_PASS_ENCODE;
        hb_add_internal(h, job, list_pass);
    }
}
