
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int write_buffer; int read_packet; } ;
struct TYPE_6__ {int * pps_ref; int pps; int * sps_ref; int sps; int * vps_ref; int vps; TYPE_1__ common; } ;
typedef TYPE_2__ CodedBitstreamH265Context ;
typedef TYPE_3__ CodedBitstreamContext ;


 int FF_ARRAY_ELEMS (int ) ;
 int av_buffer_unref (int *) ;
 int av_freep (int *) ;
 int ff_h2645_packet_uninit (int *) ;

__attribute__((used)) static void cbs_h265_close(CodedBitstreamContext *ctx)
{
    CodedBitstreamH265Context *h265 = ctx->priv_data;
    int i;

    ff_h2645_packet_uninit(&h265->common.read_packet);

    av_freep(&h265->common.write_buffer);

    for (i = 0; i < FF_ARRAY_ELEMS(h265->vps); i++)
        av_buffer_unref(&h265->vps_ref[i]);
    for (i = 0; i < FF_ARRAY_ELEMS(h265->sps); i++)
        av_buffer_unref(&h265->sps_ref[i]);
    for (i = 0; i < FF_ARRAY_ELEMS(h265->pps); i++)
        av_buffer_unref(&h265->pps_ref[i]);
}
