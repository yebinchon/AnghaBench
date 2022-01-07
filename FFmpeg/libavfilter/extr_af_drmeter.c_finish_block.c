
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sum; int nb_samples; float peak; int blknum; int * peaks; int * rms; } ;
typedef TYPE_1__ ChannelStats ;


 int av_clip (float,int ,int) ;
 float sqrt (int) ;

__attribute__((used)) static void finish_block(ChannelStats *p)
{
    int peak_bin, rms_bin;
    float peak, rms;

    rms = sqrt(2 * p->sum / p->nb_samples);
    peak = p->peak;
    rms_bin = av_clip(rms * 10000, 0, 10000);
    peak_bin = av_clip(peak * 10000, 0, 10000);
    p->rms[rms_bin]++;
    p->peaks[peak_bin]++;

    p->peak = 0;
    p->sum = 0;
    p->nb_samples = 0;
    p->blknum++;
}
