
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int stream_index; int* data; double pts; double dts; scalar_t__ size; int flags; } ;
struct TYPE_8__ {int video_switch; double w; double h; double packet_count; double ts_per_packet; int linesize; int f; scalar_t__ video_stream; scalar_t__ expr; scalar_t__ print_textinfo; int fsize; } ;
typedef TYPE_1__ ModPlugContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AUDIO_PKT_SIZE ;
 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 int ENOMEM ;
 double ModPlug_GetCurrentOrder (int ) ;
 double ModPlug_GetCurrentPattern (int ) ;
 double ModPlug_GetCurrentRow (int ) ;
 double ModPlug_GetCurrentSpeed (int ) ;
 double ModPlug_GetCurrentTempo (int ) ;
 scalar_t__ ModPlug_Read (int ,int*,int ) ;
 int PRINT_INFO (int,char*,size_t) ;
 size_t VAR_H ;
 size_t VAR_ORDER ;
 size_t VAR_PATTERN ;
 size_t VAR_ROW ;
 size_t VAR_SPEED ;
 size_t VAR_TEMPO ;
 size_t VAR_TIME ;
 int VAR_VARS_NB ;
 size_t VAR_W ;
 size_t VAR_X ;
 size_t VAR_Y ;
 int av_clip (int,int ,int) ;
 double av_expr_eval (scalar_t__,double*,int *) ;
 scalar_t__ av_new_packet (TYPE_2__*,int ) ;
 int av_packet_unref (TYPE_2__*) ;
 int memset (int*,int ,int ) ;

__attribute__((used)) static int modplug_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    ModPlugContext *modplug = s->priv_data;

    if (modplug->video_stream) {
        modplug->video_switch ^= 1;
        if (modplug->video_switch) {
            double var_values[VAR_VARS_NB];

            var_values[VAR_W ] = modplug->w;
            var_values[VAR_H ] = modplug->h;
            var_values[VAR_TIME ] = modplug->packet_count * modplug->ts_per_packet;
            var_values[VAR_SPEED ] = ModPlug_GetCurrentSpeed (modplug->f);
            var_values[VAR_TEMPO ] = ModPlug_GetCurrentTempo (modplug->f);
            var_values[VAR_ORDER ] = ModPlug_GetCurrentOrder (modplug->f);
            var_values[VAR_PATTERN] = ModPlug_GetCurrentPattern(modplug->f);
            var_values[VAR_ROW ] = ModPlug_GetCurrentRow (modplug->f);

            if (av_new_packet(pkt, modplug->fsize) < 0)
                return AVERROR(ENOMEM);
            pkt->stream_index = 1;
            memset(pkt->data, 0, modplug->fsize);

            if (modplug->print_textinfo) {
                char intbuf[32];
                PRINT_INFO(0, "speed", VAR_SPEED);
                PRINT_INFO(1, "tempo", VAR_TEMPO);
                PRINT_INFO(2, "order", VAR_ORDER);
                PRINT_INFO(3, "pattern", VAR_PATTERN);
                PRINT_INFO(4, "row", VAR_ROW);
                PRINT_INFO(5, "ts", VAR_TIME);
            }

            if (modplug->expr) {
                int x, y;
                for (y = 0; y < modplug->h; y++) {
                    for (x = 0; x < modplug->w; x++) {
                        double color;
                        var_values[VAR_X] = x;
                        var_values[VAR_Y] = y;
                        color = av_expr_eval(modplug->expr, var_values, ((void*)0));
                        pkt->data[y*modplug->linesize + x*3 + 2] |= av_clip((int)color, 0, 0xf)<<4;
                    }
                }
            }
            pkt->pts = pkt->dts = var_values[VAR_TIME];
            pkt->flags |= AV_PKT_FLAG_KEY;
            return 0;
        }
    }

    if (av_new_packet(pkt, AUDIO_PKT_SIZE) < 0)
        return AVERROR(ENOMEM);

    if (modplug->video_stream)
        pkt->pts = pkt->dts = modplug->packet_count++ * modplug->ts_per_packet;

    pkt->size = ModPlug_Read(modplug->f, pkt->data, AUDIO_PKT_SIZE);
    if (pkt->size <= 0) {
        av_packet_unref(pkt);
        return pkt->size == 0 ? AVERROR_EOF : AVERROR(EIO);
    }
    return 0;
}
