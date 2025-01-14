
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* sps; } ;
struct TYPE_12__ {scalar_t__ seq_output; scalar_t__ poc; TYPE_4__* DPB; TYPE_3__ ps; } ;
struct TYPE_11__ {int flags; scalar_t__ sequence; scalar_t__ poc; } ;
struct TYPE_9__ {int max_sub_layers; TYPE_1__* temporal_layer; } ;
struct TYPE_8__ {int max_dec_pic_buffering; } ;
typedef TYPE_4__ HEVCFrame ;
typedef TYPE_5__ HEVCContext ;


 int FF_ARRAY_ELEMS (TYPE_4__*) ;
 int HEVC_FRAME_FLAG_BUMPING ;
 int HEVC_FRAME_FLAG_OUTPUT ;
 int INT_MAX ;

void ff_hevc_bump_frame(HEVCContext *s)
{
    int dpb = 0;
    int min_poc = INT_MAX;
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(s->DPB); i++) {
        HEVCFrame *frame = &s->DPB[i];
        if ((frame->flags) &&
            frame->sequence == s->seq_output &&
            frame->poc != s->poc) {
            dpb++;
        }
    }

    if (s->ps.sps && dpb >= s->ps.sps->temporal_layer[s->ps.sps->max_sub_layers - 1].max_dec_pic_buffering) {
        for (i = 0; i < FF_ARRAY_ELEMS(s->DPB); i++) {
            HEVCFrame *frame = &s->DPB[i];
            if ((frame->flags) &&
                frame->sequence == s->seq_output &&
                frame->poc != s->poc) {
                if (frame->flags == HEVC_FRAME_FLAG_OUTPUT && frame->poc < min_poc) {
                    min_poc = frame->poc;
                }
            }
        }

        for (i = 0; i < FF_ARRAY_ELEMS(s->DPB); i++) {
            HEVCFrame *frame = &s->DPB[i];
            if (frame->flags & HEVC_FRAME_FLAG_OUTPUT &&
                frame->sequence == s->seq_output &&
                frame->poc <= min_poc) {
                frame->flags |= HEVC_FRAME_FLAG_BUMPING;
            }
        }

        dpb--;
    }
}
