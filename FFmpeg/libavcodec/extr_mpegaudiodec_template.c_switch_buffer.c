
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size_in_bits; int * buffer; } ;
struct TYPE_5__ {int extrasize; TYPE_3__ gb; TYPE_3__ in_gb; } ;
typedef TYPE_1__ MPADecodeContext ;


 int av_assert2 (int) ;
 int get_bits_count (TYPE_3__*) ;
 int skip_bits_long (TYPE_3__*,int) ;

__attribute__((used)) static void switch_buffer(MPADecodeContext *s, int *pos, int *end_pos,
                          int *end_pos2)
{
    if (s->in_gb.buffer && *pos >= s->gb.size_in_bits - s->extrasize * 8) {
        s->gb = s->in_gb;
        s->in_gb.buffer = ((void*)0);
        s->extrasize = 0;
        av_assert2((get_bits_count(&s->gb) & 7) == 0);
        skip_bits_long(&s->gb, *pos - *end_pos);
        *end_pos2 =
        *end_pos = *end_pos2 + get_bits_count(&s->gb) - *pos;
        *pos = get_bits_count(&s->gb);
    }
}
