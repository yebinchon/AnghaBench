
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int* chan_map; int ** planar_samples; TYPE_4__* cpe; } ;
struct TYPE_10__ {TYPE_3__* ch; } ;
struct TYPE_7__ {scalar_t__ lag; } ;
struct TYPE_8__ {TYPE_1__ ltp; } ;
struct TYPE_9__ {TYPE_2__ ics; int * ret_buf; int * ltp_state; } ;
typedef TYPE_3__ SingleChannelElement ;
typedef TYPE_4__ ChannelElement ;
typedef TYPE_5__ AACEncContext ;


 int TYPE_CPE ;
 int memcpy (int *,int *,int) ;

void ff_aac_ltp_insert_new_frame(AACEncContext *s)
{
    int i, ch, tag, chans, cur_channel, start_ch = 0;
    ChannelElement *cpe;
    SingleChannelElement *sce;
    for (i = 0; i < s->chan_map[0]; i++) {
        cpe = &s->cpe[i];
        tag = s->chan_map[i+1];
        chans = tag == TYPE_CPE ? 2 : 1;
        for (ch = 0; ch < chans; ch++) {
            sce = &cpe->ch[ch];
            cur_channel = start_ch + ch;

            memcpy(&sce->ltp_state[0], &sce->ltp_state[1024], 1024*sizeof(sce->ltp_state[0]));
            memcpy(&sce->ltp_state[1024], &s->planar_samples[cur_channel][2048], 1024*sizeof(sce->ltp_state[0]));
            memcpy(&sce->ltp_state[2048], &sce->ret_buf[0], 1024*sizeof(sce->ltp_state[0]));
            sce->ics.ltp.lag = 0;
        }
        start_ch += chans;
    }
}
