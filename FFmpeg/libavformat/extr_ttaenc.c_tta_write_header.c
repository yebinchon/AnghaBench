
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int channels; int bits_per_raw_sample; int sample_rate; scalar_t__ extradata; } ;
struct TYPE_8__ {int pb; TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int seek_table; } ;
struct TYPE_6__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ TTAMuxContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AV_RL16 (scalar_t__) ;
 int UINT32_MAX ;
 int avio_open_dyn_buf (int *) ;
 int avio_wl16 (int ,int) ;
 int avio_wl32 (int ,int ) ;
 int avio_write (int ,char*,int) ;
 int ff_crcEDB88320_update ;
 int ffio_init_checksum (int ,int ,int ) ;

__attribute__((used)) static int tta_write_header(AVFormatContext *s)
{
    TTAMuxContext *tta = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret;

    if ((ret = avio_open_dyn_buf(&tta->seek_table)) < 0)
        return ret;



    ffio_init_checksum(s->pb, ff_crcEDB88320_update, UINT32_MAX);
    ffio_init_checksum(tta->seek_table, ff_crcEDB88320_update, UINT32_MAX);
    avio_write(s->pb, "TTA1", 4);
    avio_wl16(s->pb, par->extradata ? AV_RL16(par->extradata + 4) : 1);
    avio_wl16(s->pb, par->channels);
    avio_wl16(s->pb, par->bits_per_raw_sample);
    avio_wl32(s->pb, par->sample_rate);

    return 0;
}
