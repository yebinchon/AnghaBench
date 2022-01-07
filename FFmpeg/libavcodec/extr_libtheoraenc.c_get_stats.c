
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int buf ;
struct TYPE_5__ {int stats_offset; void* stats; int stats_size; int t_state; } ;
typedef TYPE_1__ TheoraContext ;
struct TYPE_6__ {int stats_out; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_BASE64_SIZE (int) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int ENOSUP ;
 int TH_ENCCTL_2PASS_OUT ;
 int av_base64_encode (int ,int,void*,int) ;
 void* av_fast_realloc (void*,int *,int) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_malloc (int) ;
 int memcpy (void*,int *,int) ;
 int th_encode_ctl (int ,int ,int **,int) ;

__attribute__((used)) static int get_stats(AVCodecContext *avctx, int eos)
{
    av_log(avctx, AV_LOG_ERROR, "libtheora too old to support 2pass\n");
    return AVERROR(ENOSUP);

}
