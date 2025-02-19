
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ms_mode; int* ms_mask; TYPE_2__* ch; } ;
struct TYPE_5__ {int num_windows; int max_sfb; scalar_t__* group_len; } ;
struct TYPE_6__ {TYPE_1__ ics; } ;
typedef int PutBitContext ;
typedef TYPE_3__ ChannelElement ;


 int put_bits (int *,int,int) ;

__attribute__((used)) static void encode_ms_info(PutBitContext *pb, ChannelElement *cpe)
{
    int i, w;

    put_bits(pb, 2, cpe->ms_mode);
    if (cpe->ms_mode == 1)
        for (w = 0; w < cpe->ch[0].ics.num_windows; w += cpe->ch[0].ics.group_len[w])
            for (i = 0; i < cpe->ch[0].ics.max_sfb; i++)
                put_bits(pb, 1, cpe->ms_mask[w*16 + i]);
}
