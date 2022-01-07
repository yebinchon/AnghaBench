
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {scalar_t__ channels; int sample_rate; int channel_layout; } ;
struct TYPE_12__ {scalar_t__ channels; int blocksize; int frame_or_sample_num; scalar_t__ is_var_size; int samplerate; } ;
struct TYPE_14__ {int offset; TYPE_2__ fi; struct TYPE_14__* best_child; } ;
struct TYPE_13__ {int last_fi_valid; int fifo_buf; TYPE_2__ last_fi; scalar_t__ best_header_valid; TYPE_1__* pc; int wrap_buf_allocated_size; int wrap_buf; TYPE_7__* avctx; TYPE_4__* best_header; } ;
struct TYPE_11__ {int duration; int flags; int pts; } ;
typedef TYPE_3__ FLACParseContext ;
typedef TYPE_4__ FLACHeaderMarker ;


 int PARSER_FLAG_USE_CODEC_TS ;
 int av_fifo_size (int ) ;
 int check_header_mismatch (TYPE_3__*,TYPE_4__*,TYPE_4__*,int ) ;
 int ff_flac_set_channel_layout (TYPE_7__*) ;
 int * flac_fifo_read_wrap (TYPE_3__*,int,int,int *,int *) ;

__attribute__((used)) static int get_best_header(FLACParseContext *fpc, const uint8_t **poutbuf,
                           int *poutbuf_size)
{
    FLACHeaderMarker *header = fpc->best_header;
    FLACHeaderMarker *child = header->best_child;
    if (!child) {
        *poutbuf_size = av_fifo_size(fpc->fifo_buf) - header->offset;
    } else {
        *poutbuf_size = child->offset - header->offset;


        check_header_mismatch(fpc, header, child, 0);
    }

    if (header->fi.channels != fpc->avctx->channels ||
        !fpc->avctx->channel_layout) {
        fpc->avctx->channels = header->fi.channels;
        ff_flac_set_channel_layout(fpc->avctx);
    }
    fpc->avctx->sample_rate = header->fi.samplerate;
    fpc->pc->duration = header->fi.blocksize;
    *poutbuf = flac_fifo_read_wrap(fpc, header->offset, *poutbuf_size,
                                        &fpc->wrap_buf,
                                        &fpc->wrap_buf_allocated_size);


    if (fpc->pc->flags & PARSER_FLAG_USE_CODEC_TS) {
        if (header->fi.is_var_size)
          fpc->pc->pts = header->fi.frame_or_sample_num;
        else if (header->best_child)
          fpc->pc->pts = header->fi.frame_or_sample_num * header->fi.blocksize;
    }

    fpc->best_header_valid = 0;
    fpc->last_fi_valid = 1;
    fpc->last_fi = header->fi;



    if (child)
        return child->offset - av_fifo_size(fpc->fifo_buf);
    return 0;
}
