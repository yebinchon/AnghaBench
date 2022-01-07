
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int mclms_recent; int mclms_order; int num_channels; int* cdlms_ttl; int* transient; scalar_t__* transient_pos; int samples_per_frame; TYPE_2__* channel; TYPE_1__** cdlms; } ;
typedef TYPE_3__ WmallDecodeCtx ;
struct TYPE_6__ {int transient_counter; } ;
struct TYPE_5__ {int order; int recent; } ;



__attribute__((used)) static void reset_codec(WmallDecodeCtx *s)
{
    int ich, ilms;
    s->mclms_recent = s->mclms_order * s->num_channels;
    for (ich = 0; ich < s->num_channels; ich++) {
        for (ilms = 0; ilms < s->cdlms_ttl[ich]; ilms++)
            s->cdlms[ich][ilms].recent = s->cdlms[ich][ilms].order;


        s->channel[ich].transient_counter = s->samples_per_frame;
        s->transient[ich] = 1;
        s->transient_pos[ich] = 0;
    }
}
