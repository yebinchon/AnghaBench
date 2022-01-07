
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_17__ {int interlaced; int pb; TYPE_4__* avctx; TYPE_5__* transform_args; int * plane; } ;
typedef TYPE_1__ VC2EncContext ;
typedef int TransformArgs ;
struct TYPE_21__ {int field; int istride; int idata; int * plane; TYPE_1__* ctx; } ;
struct TYPE_20__ {int (* execute ) (TYPE_4__*,int ,TYPE_5__*,int *,int,int) ;} ;
struct TYPE_19__ {int * linesize; int * data; } ;
struct TYPE_18__ {int size; int data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;


 int AV_LOG_ERROR ;
 int DIRAC_PCODE_AUX ;
 int DIRAC_PCODE_END_SEQ ;
 int DIRAC_PCODE_PICTURE_HQ ;
 int DIRAC_PCODE_SEQ_HEADER ;
 int av_log (TYPE_4__*,int ,char*) ;
 int avpriv_put_string (int *,char const*,int) ;
 int calc_slice_sizes (TYPE_1__*) ;
 int dwt_plane ;
 int encode_parse_info (TYPE_1__*,int ) ;
 int encode_picture_start (TYPE_1__*) ;
 int encode_seq_header (TYPE_1__*) ;
 int encode_slices (TYPE_1__*) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int) ;
 int init_put_bits (int *,int ,int ) ;
 int stub1 (TYPE_4__*,int ,TYPE_5__*,int *,int,int) ;

__attribute__((used)) static int encode_frame(VC2EncContext *s, AVPacket *avpkt, const AVFrame *frame,
                        const char *aux_data, const int header_size, int field)
{
    int i, ret;
    int64_t max_frame_bytes;


    for (i = 0; i < 3; i++) {
        s->transform_args[i].ctx = s;
        s->transform_args[i].field = field;
        s->transform_args[i].plane = &s->plane[i];
        s->transform_args[i].idata = frame->data[i];
        s->transform_args[i].istride = frame->linesize[i];
    }
    s->avctx->execute(s->avctx, dwt_plane, s->transform_args, ((void*)0), 3,
                      sizeof(TransformArgs));


    max_frame_bytes = header_size + calc_slice_sizes(s);

    if (field < 2) {
        ret = ff_alloc_packet2(s->avctx, avpkt,
                               max_frame_bytes << s->interlaced,
                               max_frame_bytes << s->interlaced);
        if (ret) {
            av_log(s->avctx, AV_LOG_ERROR, "Error getting output packet.\n");
            return ret;
        }
        init_put_bits(&s->pb, avpkt->data, avpkt->size);
    }


    encode_parse_info(s, DIRAC_PCODE_SEQ_HEADER);
    encode_seq_header(s);


    if (aux_data) {
        encode_parse_info(s, DIRAC_PCODE_AUX);
        avpriv_put_string(&s->pb, aux_data, 1);
    }


    encode_parse_info(s, DIRAC_PCODE_PICTURE_HQ);
    encode_picture_start(s);


    encode_slices(s);


    encode_parse_info(s, DIRAC_PCODE_END_SEQ);

    return 0;
}
