
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_2__ {int divisor; int (* filter ) (void*,void*,int,int ,int*,int ) ;int (* nofilter ) (void*,void*,int,int ) ;int src_sps; int overlap_area; int cur_pos; scalar_t__ can_be_filtered; } ;
typedef int INT32 ;


 int APPL_TRACE_DEBUG (char*,int) ;
 TYPE_1__* p_bta_dm_pcm_cb ;
 int stub1 (void*,void*,int,int ,int*,int ) ;
 int stub2 (void*,void*,int,int ) ;

INT32 BTA_DmPcmResample (void *p_src, UINT32 in_bytes, void *p_dst)
{
    UINT32 out_sample;




    if (p_bta_dm_pcm_cb->can_be_filtered) {
        out_sample = (*p_bta_dm_pcm_cb->filter) (p_src, p_dst, (in_bytes / p_bta_dm_pcm_cb->divisor),
                                              p_bta_dm_pcm_cb->src_sps, (INT32 *) &(p_bta_dm_pcm_cb->cur_pos), p_bta_dm_pcm_cb->overlap_area);
    } else {
        out_sample = (*p_bta_dm_pcm_cb->nofilter) (p_src, p_dst,
                                                (in_bytes / p_bta_dm_pcm_cb->divisor), p_bta_dm_pcm_cb->src_sps);
    }





    return (out_sample);
}
