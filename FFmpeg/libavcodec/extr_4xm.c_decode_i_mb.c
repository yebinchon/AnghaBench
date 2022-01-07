
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* clear_blocks ) (int ) ;} ;
struct TYPE_6__ {int * block; TYPE_1__ bdsp; } ;
typedef TYPE_2__ FourXContext ;


 int decode_i_block (TYPE_2__*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int decode_i_mb(FourXContext *f)
{
    int ret;
    int i;

    f->bdsp.clear_blocks(f->block[0]);

    for (i = 0; i < 6; i++)
        if ((ret = decode_i_block(f, f->block[i])) < 0)
            return ret;

    return 0;
}
