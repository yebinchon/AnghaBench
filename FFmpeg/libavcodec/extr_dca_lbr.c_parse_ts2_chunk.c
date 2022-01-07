
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int min_mono_subband; int nsubbands; int max_mono_subband; int gb; } ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ LBRChunk ;
typedef TYPE_2__ DCALbrDecoder ;


 scalar_t__ init_get_bits8 (int *,int ,int ) ;
 scalar_t__ parse_grid_1_sec_ch (TYPE_2__*,int) ;
 scalar_t__ parse_grid_2 (TYPE_2__*,int,int,int,int,int) ;
 scalar_t__ parse_ts (TYPE_2__*,int,int,int,int ,int) ;

__attribute__((used)) static int parse_ts2_chunk(DCALbrDecoder *s, LBRChunk *chunk, int ch1, int ch2)
{
    if (!chunk->len)
        return 0;
    if (init_get_bits8(&s->gb, chunk->data, chunk->len) < 0)
        return -1;
    if (parse_grid_2(s, ch1, ch2, 1, 3, 0) < 0)
        return -1;
    if (parse_ts(s, ch1, ch2, 6, s->max_mono_subband, 0) < 0)
        return -1;
    if (ch1 != ch2) {
        if (parse_grid_1_sec_ch(s, ch2) < 0)
            return -1;
        if (parse_grid_2(s, ch1, ch2, 0, 3, 1) < 0)
            return -1;
    }
    if (parse_ts(s, ch1, ch2, s->min_mono_subband, s->nsubbands, 1) < 0)
        return -1;
    return 0;
}
