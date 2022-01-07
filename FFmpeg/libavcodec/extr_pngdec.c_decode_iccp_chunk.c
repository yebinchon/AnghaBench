
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_13__ {scalar_t__ buffer; } ;
struct TYPE_12__ {int len; } ;
struct TYPE_11__ {int data; int metadata; } ;
struct TYPE_10__ {TYPE_6__ gb; int avctx; } ;
typedef TYPE_1__ PNGDecContext ;
typedef TYPE_2__ AVFrameSideData ;
typedef int AVFrame ;
typedef TYPE_3__ AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_FRAME_DATA_ICC_PROFILE ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int FFMAX (int,int ) ;
 int av_bprint_finalize (TYPE_3__*,char**) ;
 int av_dict_set (int *,char*,scalar_t__*,int ) ;
 TYPE_2__* av_frame_new_side_data (int *,int ,int ) ;
 int av_free (scalar_t__*) ;
 int av_log (int ,int ,char*) ;
 scalar_t__ bytestream2_get_byte (TYPE_6__*) ;
 int bytestream2_skip (TYPE_6__*,int) ;
 int decode_zbuf (TYPE_3__*,scalar_t__,scalar_t__) ;
 int memcpy (int ,scalar_t__*,int ) ;

__attribute__((used)) static int decode_iccp_chunk(PNGDecContext *s, int length, AVFrame *f)
{
    int ret, cnt = 0;
    uint8_t *data, profile_name[82];
    AVBPrint bp;
    AVFrameSideData *sd;

    while ((profile_name[cnt++] = bytestream2_get_byte(&s->gb)) && cnt < 81);
    if (cnt > 80) {
        av_log(s->avctx, AV_LOG_ERROR, "iCCP with invalid name!\n");
        return AVERROR_INVALIDDATA;
    }

    length = FFMAX(length - cnt, 0);

    if (bytestream2_get_byte(&s->gb) != 0) {
        av_log(s->avctx, AV_LOG_ERROR, "iCCP with invalid compression!\n");
        return AVERROR_INVALIDDATA;
    }

    length = FFMAX(length - 1, 0);

    if ((ret = decode_zbuf(&bp, s->gb.buffer, s->gb.buffer + length)) < 0)
        return ret;

    ret = av_bprint_finalize(&bp, (char **)&data);
    if (ret < 0)
        return ret;

    sd = av_frame_new_side_data(f, AV_FRAME_DATA_ICC_PROFILE, bp.len);
    if (!sd) {
        av_free(data);
        return AVERROR(ENOMEM);
    }

    av_dict_set(&sd->metadata, "name", profile_name, 0);
    memcpy(sd->data, data, bp.len);
    av_free(data);


    bytestream2_skip(&s->gb, length + 4);

    return 0;
}
