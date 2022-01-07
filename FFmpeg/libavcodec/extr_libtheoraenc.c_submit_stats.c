
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stats_size; int stats_offset; scalar_t__ stats; int t_state; } ;
typedef TYPE_1__ TheoraContext ;
struct TYPE_6__ {int stats_in; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSUP ;
 int TH_ENCCTL_2PASS_IN ;
 int av_base64_decode (scalar_t__,int ,int) ;
 int av_log (TYPE_2__*,int ,char*) ;
 scalar_t__ av_malloc (int) ;
 int strlen (int ) ;
 int th_encode_ctl (int ,int ,scalar_t__,int) ;

__attribute__((used)) static int submit_stats(AVCodecContext *avctx)
{
    av_log(avctx, AV_LOG_ERROR, "libtheora too old to support 2pass\n");
    return AVERROR(ENOSUP);

}
