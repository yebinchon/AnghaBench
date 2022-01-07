
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int flags; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int pc; } ;
typedef int ParseContext ;
typedef TYPE_1__ MJPEGParserContext ;
typedef TYPE_2__ AVCodecParserContext ;
typedef int AVCodecContext ;


 int PARSER_FLAG_COMPLETE_FRAMES ;
 scalar_t__ ff_combine_frame (int *,int,int const**,int*) ;
 int find_frame_end (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int jpeg_parse(AVCodecParserContext *s,
                      AVCodecContext *avctx,
                      const uint8_t **poutbuf, int *poutbuf_size,
                      const uint8_t *buf, int buf_size)
{
    MJPEGParserContext *m = s->priv_data;
    ParseContext *pc = &m->pc;
    int next;

    if(s->flags & PARSER_FLAG_COMPLETE_FRAMES){
        next= buf_size;
    }else{
        next= find_frame_end(m, buf, buf_size);

        if (ff_combine_frame(pc, next, &buf, &buf_size) < 0) {
            *poutbuf = ((void*)0);
            *poutbuf_size = 0;
            return buf_size;
        }
    }

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}
