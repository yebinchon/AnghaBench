
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int write_buffer; int read_packet; } ;
struct TYPE_6__ {int * pps_ref; int pps; int * sps_ref; int sps; TYPE_1__ common; } ;
typedef TYPE_2__ CodedBitstreamH264Context ;
typedef TYPE_3__ CodedBitstreamContext ;


 int FF_ARRAY_ELEMS (int ) ;
 int av_buffer_unref (int *) ;
 int av_freep (int *) ;
 int ff_h2645_packet_uninit (int *) ;

__attribute__((used)) static void cbs_h264_close(CodedBitstreamContext *ctx)
{
    CodedBitstreamH264Context *h264 = ctx->priv_data;
    int i;

    ff_h2645_packet_uninit(&h264->common.read_packet);

    av_freep(&h264->common.write_buffer);

    for (i = 0; i < FF_ARRAY_ELEMS(h264->sps); i++)
        av_buffer_unref(&h264->sps_ref[i]);
    for (i = 0; i < FF_ARRAY_ELEMS(h264->pps); i++)
        av_buffer_unref(&h264->pps_ref[i]);
}
