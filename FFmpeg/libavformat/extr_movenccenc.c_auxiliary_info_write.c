
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ auxiliary_info_size; scalar_t__ auxiliary_info; } ;
typedef TYPE_1__ MOVMuxCencContext ;


 int auxiliary_info_alloc_size (TYPE_1__*,int) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int auxiliary_info_write(MOVMuxCencContext* ctx,
                                         const uint8_t *buf_in, int size)
{
    int ret;

    ret = auxiliary_info_alloc_size(ctx, size);
    if (ret) {
        return ret;
    }
    memcpy(ctx->auxiliary_info + ctx->auxiliary_info_size, buf_in, size);
    ctx->auxiliary_info_size += size;

    return 0;
}
