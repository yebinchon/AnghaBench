
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ lib_instance; scalar_t__ decoder; } ;
typedef TYPE_1__ Libaribb24Context ;
typedef TYPE_2__ AVCodecContext ;


 int arib_finalize_decoder (scalar_t__) ;
 int arib_instance_destroy (scalar_t__) ;

__attribute__((used)) static int libaribb24_close(AVCodecContext *avctx)
{
    Libaribb24Context *b24 = avctx->priv_data;

    if (b24->decoder)
        arib_finalize_decoder(b24->decoder);

    if (b24->lib_instance)
        arib_instance_destroy(b24->lib_instance);

    return 0;
}
