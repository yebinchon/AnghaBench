
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int* iquant; } ;
struct TYPE_5__ {int y; TYPE_1__ tbls; } ;
typedef TYPE_2__ G726Context ;



__attribute__((used)) static inline int16_t inverse_quant(G726Context* c, int i)
{
    int dql, dex, dqt;

    dql = c->tbls.iquant[i] + (c->y >> 2);
    dex = (dql>>7) & 0xf;
    dqt = (1<<7) + (dql & 0x7f);
    return (dql < 0) ? 0 : ((dqt<<dex) >> 7);
}
