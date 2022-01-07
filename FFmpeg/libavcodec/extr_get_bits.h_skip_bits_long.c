
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; scalar_t__ size_in_bits_plus8; } ;
typedef TYPE_1__ GetBitContext ;


 scalar_t__ av_clip (int,int,scalar_t__) ;
 int skip_bits (TYPE_1__*,int) ;

__attribute__((used)) static inline void skip_bits_long(GetBitContext *s, int n)
{






    s->index += av_clip(n, -s->index, s->size_in_bits_plus8 - s->index);


}
