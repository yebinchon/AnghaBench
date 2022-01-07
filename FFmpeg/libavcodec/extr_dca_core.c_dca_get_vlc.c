
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offset; int max_depth; TYPE_1__* vlc; } ;
struct TYPE_4__ {int bits; int table; } ;
typedef int GetBitContext ;
typedef TYPE_2__ DCAVLC ;


 int get_vlc2 (int *,int ,int ,int ) ;

__attribute__((used)) static int dca_get_vlc(GetBitContext *s, DCAVLC *v, int i)
{
    return get_vlc2(s, v->vlc[i].table, v->vlc[i].bits, v->max_depth) + v->offset;
}
