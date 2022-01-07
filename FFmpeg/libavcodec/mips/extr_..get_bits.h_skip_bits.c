
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bits_left; unsigned int index; scalar_t__ cache; } ;
typedef TYPE_1__ GetBitContext ;


 int CLOSE_READER (int ,TYPE_1__*) ;
 int LAST_SKIP_BITS (int ,TYPE_1__*,int) ;
 int OPEN_READER (int ,TYPE_1__*) ;
 int re ;
 int refill_64 (TYPE_1__*,int) ;
 int skip_remaining (TYPE_1__*,int) ;

__attribute__((used)) static inline void skip_bits(GetBitContext *s, int n)
{
    OPEN_READER(re, s);
    LAST_SKIP_BITS(re, s, n);
    CLOSE_READER(re, s);

}
