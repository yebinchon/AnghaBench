
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct MpvParseContext {int pc; } ;
struct TYPE_9__ {int framerate; } ;
struct TYPE_8__ {int flags; int repeat_pict; int pict_type; struct MpvParseContext* priv_data; } ;
typedef int ParseContext ;
typedef TYPE_1__ AVCodecParserContext ;
typedef TYPE_2__ AVCodecContext ;


 int PARSER_FLAG_COMPLETE_FRAMES ;
 int av_q2d (int ) ;
 scalar_t__ ff_combine_frame (int *,int,int const**,int*) ;
 int ff_dlog (int *,char*,int ,int ,int ) ;
 int ff_mpeg1_find_frame_end (int *,int const*,int,TYPE_1__*) ;
 int mpegvideo_extract_headers (TYPE_1__*,TYPE_2__*,int const*,int) ;

__attribute__((used)) static int mpegvideo_parse(AVCodecParserContext *s,
                           AVCodecContext *avctx,
                           const uint8_t **poutbuf, int *poutbuf_size,
                           const uint8_t *buf, int buf_size)
{
    struct MpvParseContext *pc1 = s->priv_data;
    ParseContext *pc= &pc1->pc;
    int next;

    if(s->flags & PARSER_FLAG_COMPLETE_FRAMES){
        next= buf_size;
    }else{
        next= ff_mpeg1_find_frame_end(pc, buf, buf_size, s);

        if (ff_combine_frame(pc, next, &buf, &buf_size) < 0) {
            *poutbuf = ((void*)0);
            *poutbuf_size = 0;
            return buf_size;
        }

    }



    mpegvideo_extract_headers(s, avctx, buf, buf_size);
    ff_dlog(((void*)0), "pict_type=%d frame_rate=%0.3f repeat_pict=%d\n",
            s->pict_type, av_q2d(avctx->framerate), s->repeat_pict);

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}
