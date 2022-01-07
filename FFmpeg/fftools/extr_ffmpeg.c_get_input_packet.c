
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {int nb_streams; int ist_index; int ctx; scalar_t__ rate_emu; } ;
struct TYPE_6__ {scalar_t__ start; int dts; } ;
typedef TYPE_1__ InputStream ;
typedef TYPE_2__ InputFile ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int AV_TIME_BASE ;
 int EAGAIN ;
 scalar_t__ av_gettime_relative () ;
 int av_read_frame (int ,int *) ;
 scalar_t__ av_rescale (int ,int,int ) ;
 int get_input_packet_mt (TYPE_2__*,int *) ;
 TYPE_1__** input_streams ;
 int nb_input_files ;

__attribute__((used)) static int get_input_packet(InputFile *f, AVPacket *pkt)
{
    if (f->rate_emu) {
        int i;
        for (i = 0; i < f->nb_streams; i++) {
            InputStream *ist = input_streams[f->ist_index + i];
            int64_t pts = av_rescale(ist->dts, 1000000, AV_TIME_BASE);
            int64_t now = av_gettime_relative() - ist->start;
            if (pts > now)
                return AVERROR(EAGAIN);
        }
    }





    return av_read_frame(f->ctx, pkt);
}
