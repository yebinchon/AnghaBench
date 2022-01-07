
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* execute ) (TYPE_2__*,int ,int*,int*,int,int) ;} ;
struct TYPE_4__ {TYPE_2__* avctx; } ;
typedef TYPE_1__ HEVCContext ;


 int hls_decode_entry ;
 int stub1 (TYPE_2__*,int ,int*,int*,int,int) ;

__attribute__((used)) static int hls_slice_data(HEVCContext *s)
{
    int arg[2];
    int ret[2];

    arg[0] = 0;
    arg[1] = 1;

    s->avctx->execute(s->avctx, hls_decode_entry, arg, ret , 1, sizeof(int));
    return ret[0];
}
