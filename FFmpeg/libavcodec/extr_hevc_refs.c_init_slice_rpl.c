
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t slice_segment_addr; } ;
struct TYPE_9__ {TYPE_1__* pps; } ;
struct TYPE_13__ {int slice_idx; TYPE_3__ sh; TYPE_2__ ps; TYPE_5__* ref; } ;
struct TYPE_12__ {int ctb_count; int ** rpl_tab; int * refPicList; TYPE_4__* rpl_buf; } ;
struct TYPE_11__ {int size; scalar_t__ data; } ;
struct TYPE_8__ {int* ctb_addr_rs_to_ts; } ;
typedef int RefPicListTab ;
typedef int RefPicList ;
typedef TYPE_5__ HEVCFrame ;
typedef TYPE_6__ HEVCContext ;


 int AVERROR_INVALIDDATA ;

__attribute__((used)) static int init_slice_rpl(HEVCContext *s)
{
    HEVCFrame *frame = s->ref;
    int ctb_count = frame->ctb_count;
    int ctb_addr_ts = s->ps.pps->ctb_addr_rs_to_ts[s->sh.slice_segment_addr];
    int i;

    if (s->slice_idx >= frame->rpl_buf->size / sizeof(RefPicListTab))
        return AVERROR_INVALIDDATA;

    for (i = ctb_addr_ts; i < ctb_count; i++)
        frame->rpl_tab[i] = (RefPicListTab *)frame->rpl_buf->data + s->slice_idx;

    frame->refPicList = (RefPicList *)frame->rpl_tab[ctb_addr_ts];

    return 0;
}
