
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct AVMD5 {int dummy; } ;
typedef int checksum ;
struct TYPE_3__ {int nb_samples; int * extended_data; int format; int channel_layout; } ;
typedef TYPE_1__ AVFrame ;


 int av_get_bytes_per_sample (int ) ;
 int av_get_channel_layout_nb_channels (int ) ;
 int av_md5_init (struct AVMD5*) ;
 int av_md5_sum (int*,int ,int) ;
 int av_sample_fmt_is_planar (int ) ;
 int fprintf (int ,char*,...) ;
 int stdout ;

__attribute__((used)) static int process_output(struct AVMD5 *md5, AVFrame *frame)
{
    int planar = av_sample_fmt_is_planar(frame->format);
    int channels = av_get_channel_layout_nb_channels(frame->channel_layout);
    int planes = planar ? channels : 1;
    int bps = av_get_bytes_per_sample(frame->format);
    int plane_size = bps * frame->nb_samples * (planar ? 1 : channels);
    int i, j;

    for (i = 0; i < planes; i++) {
        uint8_t checksum[16];

        av_md5_init(md5);
        av_md5_sum(checksum, frame->extended_data[i], plane_size);

        fprintf(stdout, "plane %d: 0x", i);
        for (j = 0; j < sizeof(checksum); j++)
            fprintf(stdout, "%02X", checksum[j]);
        fprintf(stdout, "\n");
    }
    fprintf(stdout, "\n");

    return 0;
}
