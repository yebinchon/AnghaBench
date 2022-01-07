
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pitch; scalar_t__ buf; int (* dc_transform ) (int*,scalar_t__,int ,int) ;} ;
typedef TYPE_1__ IVIBandDesc ;


 int stub1 (int*,scalar_t__,int ,int) ;

__attribute__((used)) static int ivi_dc_transform(const IVIBandDesc *band, int *prev_dc, int buf_offs,
                            int blk_size)
{
    band->dc_transform(prev_dc, band->buf + buf_offs,
                       band->pitch, blk_size);

    return 0;
}
