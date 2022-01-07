
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; int avctx; int gb; } ;
struct TYPE_7__ {int len; int data; } ;
typedef TYPE_1__ LBRChunk ;
typedef TYPE_2__ DCALbrDecoder ;


 int AV_LOG_ERROR ;
 int LBR_FLAG_LFE_PRESENT ;
 int av_log (int ,int ,char*) ;
 scalar_t__ init_get_bits8 (int *,int ,int) ;
 int parse_lfe_16 (TYPE_2__*) ;
 int parse_lfe_24 (TYPE_2__*) ;

__attribute__((used)) static int parse_lfe_chunk(DCALbrDecoder *s, LBRChunk *chunk)
{
    if (!(s->flags & LBR_FLAG_LFE_PRESENT))
        return 0;

    if (!chunk->len)
        return 0;

    if (init_get_bits8(&s->gb, chunk->data, chunk->len) < 0)
        return -1;


    if (chunk->len >= 52)
        return parse_lfe_24(s);
    if (chunk->len >= 35)
        return parse_lfe_16(s);

    av_log(s->avctx, AV_LOG_ERROR, "LFE chunk too short\n");
    return -1;
}
