
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int flags; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int is_synced; } ;
typedef TYPE_1__ DiracParseContext ;
typedef TYPE_2__ AVCodecParserContext ;
typedef int AVCodecContext ;


 int PARSER_FLAG_COMPLETE_FRAMES ;
 scalar_t__ dirac_combine_frame (TYPE_2__*,int *,int,int const**,int*) ;
 int find_frame_end (TYPE_1__*,int const*,int) ;

__attribute__((used)) static int dirac_parse(AVCodecParserContext *s, AVCodecContext *avctx,
                       const uint8_t **poutbuf, int *poutbuf_size,
                       const uint8_t *buf, int buf_size)
{
    DiracParseContext *pc = s->priv_data;
    int next;

    *poutbuf = ((void*)0);
    *poutbuf_size = 0;

    if (s->flags & PARSER_FLAG_COMPLETE_FRAMES) {
        next = buf_size;
        *poutbuf = buf;
        *poutbuf_size = buf_size;

    } else {
        next = find_frame_end(pc, buf, buf_size);
        if (!pc->is_synced && next == -1)

            return buf_size;

        if (dirac_combine_frame(s, avctx, next, &buf, &buf_size) < 0)
            return buf_size;
    }

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}
