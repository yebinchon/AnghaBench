
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nb_units; TYPE_2__* units; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__* content; } ;
struct TYPE_7__ {int payload_count; int * payload; } ;
typedef TYPE_1__ H264RawSEI ;
typedef TYPE_2__ CodedBitstreamUnit ;
typedef TYPE_3__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;


 scalar_t__ H264_NAL_SEI ;
 int av_assert0 (int) ;
 int cbs_h264_free_sei_payload (int *) ;
 int ff_cbs_delete_unit (int *,TYPE_3__*,int) ;
 int memmove (int *,int *,int) ;

void ff_cbs_h264_delete_sei_message(CodedBitstreamContext *ctx,
                                    CodedBitstreamFragment *au,
                                    CodedBitstreamUnit *nal,
                                    int position)
{
    H264RawSEI *sei = nal->content;

    av_assert0(nal->type == H264_NAL_SEI);
    av_assert0(position >= 0 && position < sei->payload_count);

    if (position == 0 && sei->payload_count == 1) {

        int i;

        for (i = 0; i < au->nb_units; i++) {
            if (&au->units[i] == nal)
                break;
        }

        ff_cbs_delete_unit(ctx, au, i);
    } else {
        cbs_h264_free_sei_payload(&sei->payload[position]);

        --sei->payload_count;
        memmove(sei->payload + position,
                sei->payload + position + 1,
                (sei->payload_count - position) * sizeof(*sei->payload));
    }
}
