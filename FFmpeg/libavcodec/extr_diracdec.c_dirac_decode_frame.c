
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;
typedef struct TYPE_21__ TYPE_17__ ;
typedef struct TYPE_20__ TYPE_16__ ;


typedef char uint8_t ;
struct TYPE_30__ {TYPE_2__* avframe; } ;
struct TYPE_29__ {TYPE_4__* priv_data; } ;
struct TYPE_28__ {scalar_t__ display_picture_number; } ;
struct TYPE_27__ {char* data; int size; } ;
struct TYPE_26__ {scalar_t__ frame_number; TYPE_19__* current_picture; TYPE_9__** delay_frames; TYPE_7__* avctx; TYPE_1__* all_frames; } ;
struct TYPE_25__ {TYPE_17__* avframe; int reference; } ;
struct TYPE_24__ {int display_picture_number; } ;
struct TYPE_23__ {int interpolated; TYPE_16__* avframe; int reference; } ;
struct TYPE_22__ {TYPE_17__* avframe; int reference; } ;
struct TYPE_21__ {scalar_t__ display_picture_number; } ;
struct TYPE_20__ {scalar_t__* data; } ;
typedef TYPE_3__ DiracFrame ;
typedef TYPE_4__ DiracContext ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 int AV_LOG_ERROR ;
 unsigned int AV_RB32 (char*) ;
 int DATA_UNIT_HEADER_SIZE ;
 int DELAYED_PIC_REF ;
 int MAX_DELAY ;
 int MAX_FRAMES ;
 scalar_t__ add_frame (TYPE_9__**,int ,TYPE_19__*) ;
 int av_frame_ref (void*,TYPE_17__*) ;
 int av_frame_unref (TYPE_16__*) ;
 int av_log (TYPE_7__*,int ,char*,...) ;
 int dirac_decode_data_unit (TYPE_7__*,char*,unsigned int) ;
 int get_delayed_pic (TYPE_4__*,TYPE_6__*,int*) ;
 int memset (int ,int ,int) ;
 TYPE_3__* remove_frame (TYPE_9__**,int) ;

__attribute__((used)) static int dirac_decode_frame(AVCodecContext *avctx, void *data, int *got_frame, AVPacket *pkt)
{
    DiracContext *s = avctx->priv_data;
    AVFrame *picture = data;
    uint8_t *buf = pkt->data;
    int buf_size = pkt->size;
    int i, buf_idx = 0;
    int ret;
    unsigned data_unit_size;


    for (i = 0; i < MAX_FRAMES; i++)
        if (s->all_frames[i].avframe->data[0] && !s->all_frames[i].reference) {
            av_frame_unref(s->all_frames[i].avframe);
            memset(s->all_frames[i].interpolated, 0, sizeof(s->all_frames[i].interpolated));
        }

    s->current_picture = ((void*)0);
    *got_frame = 0;


    if (buf_size == 0)
        return get_delayed_pic(s, (AVFrame *)data, got_frame);

    for (;;) {



        for (; buf_idx + DATA_UNIT_HEADER_SIZE < buf_size; buf_idx++) {
            if (buf[buf_idx ] == 'B' && buf[buf_idx+1] == 'B' &&
                buf[buf_idx+2] == 'C' && buf[buf_idx+3] == 'D')
                break;
        }

        if (buf_idx + DATA_UNIT_HEADER_SIZE >= buf_size)
            break;

        data_unit_size = AV_RB32(buf+buf_idx+5);
        if (data_unit_size > buf_size - buf_idx || !data_unit_size) {
            if(data_unit_size > buf_size - buf_idx)
            av_log(s->avctx, AV_LOG_ERROR,
                   "Data unit with size %d is larger than input buffer, discarding\n",
                   data_unit_size);
            buf_idx += 4;
            continue;
        }

        ret = dirac_decode_data_unit(avctx, buf+buf_idx, data_unit_size);
        if (ret < 0)
        {
            av_log(s->avctx, AV_LOG_ERROR,"Error in dirac_decode_data_unit\n");
            return ret;
        }
        buf_idx += data_unit_size;
    }

    if (!s->current_picture)
        return buf_size;

    if (s->current_picture->avframe->display_picture_number > s->frame_number) {
        DiracFrame *delayed_frame = remove_frame(s->delay_frames, s->frame_number);

        s->current_picture->reference |= DELAYED_PIC_REF;

        if (add_frame(s->delay_frames, MAX_DELAY, s->current_picture)) {
            int min_num = s->delay_frames[0]->avframe->display_picture_number;

            av_log(avctx, AV_LOG_ERROR, "Delay frame overflow\n");

            for (i = 1; s->delay_frames[i]; i++)
                if (s->delay_frames[i]->avframe->display_picture_number < min_num)
                    min_num = s->delay_frames[i]->avframe->display_picture_number;

            delayed_frame = remove_frame(s->delay_frames, min_num);
            add_frame(s->delay_frames, MAX_DELAY, s->current_picture);
        }

        if (delayed_frame) {
            delayed_frame->reference ^= DELAYED_PIC_REF;
            if((ret=av_frame_ref(data, delayed_frame->avframe)) < 0)
                return ret;
            *got_frame = 1;
        }
    } else if (s->current_picture->avframe->display_picture_number == s->frame_number) {

        if((ret=av_frame_ref(data, s->current_picture->avframe)) < 0)
            return ret;
        *got_frame = 1;
    }

    if (*got_frame)
        s->frame_number = picture->display_picture_number + 1LL;

    return buf_idx;
}
