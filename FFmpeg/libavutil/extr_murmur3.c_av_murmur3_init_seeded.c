
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int h2; int h1; } ;
typedef TYPE_1__ AVMurMur3 ;


 int memset (TYPE_1__*,int ,int) ;

void av_murmur3_init_seeded(AVMurMur3 *c, uint64_t seed)
{
    memset(c, 0, sizeof(*c));
    c->h1 = c->h2 = seed;
}
