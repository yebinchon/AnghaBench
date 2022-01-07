
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ version; int gb; } ;
typedef TYPE_1__ ShortenContext ;


 unsigned int AVERROR_INVALIDDATA ;
 int ULONGSIZE ;
 unsigned int get_ur_golomb_shorten (int *,int) ;

__attribute__((used)) static inline unsigned int get_uint(ShortenContext *s, int k)
{
    if (s->version != 0) {
        k = get_ur_golomb_shorten(&s->gb, ULONGSIZE);
        if (k > 31U)
            return AVERROR_INVALIDDATA;
    }
    return get_ur_golomb_shorten(&s->gb, k);
}
