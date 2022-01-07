
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int buffer_end; int buffer; int bits_left; int cache; } ;
typedef TYPE_1__ GetBitContext ;


 int AV_RB64 (int) ;
 int AV_RL64 (int) ;

__attribute__((used)) static inline void refill_64(GetBitContext *s, int is_le)
{

    if (s->index >> 3 >= s->buffer_end - s->buffer)
        return;


    if (is_le)
    s->cache = AV_RL64(s->buffer + (s->index >> 3));
    else
    s->cache = AV_RB64(s->buffer + (s->index >> 3));
    s->index += 64;
    s->bits_left = 64;
}
