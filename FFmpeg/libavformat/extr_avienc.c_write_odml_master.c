
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int codec_type; } ;
struct TYPE_12__ {TYPE_2__** streams; TYPE_4__* priv_data; int * pb; } ;
struct TYPE_11__ {int master_index_max_size; } ;
struct TYPE_8__ {int indx_start; } ;
struct TYPE_10__ {TYPE_1__ indexes; } ;
struct TYPE_9__ {TYPE_3__* priv_data; TYPE_6__* codecpar; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVIStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVIContext ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVCodecParameters ;


 int avi_stream2fourcc (unsigned char*,int,int ) ;
 int avio_w8 (int *,int ) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int ) ;
 int avio_wl64 (int *,int ) ;
 int ff_end_tag (int *,int ) ;
 int ff_start_tag (int *,char*) ;
 int ffio_wfourcc (int *,int ) ;

__attribute__((used)) static void write_odml_master(AVFormatContext *s, int stream_index)
{
    AVIOContext *pb = s->pb;
    AVIContext *avi = s->priv_data;
    AVStream *st = s->streams[stream_index];
    AVCodecParameters *par = st->codecpar;
    AVIStream *avist = st->priv_data;
    unsigned char tag[5];
    int j;





    avist->indexes.indx_start = ff_start_tag(pb, "JUNK");
    avio_wl16(pb, 4);
    avio_w8(pb, 0);
    avio_w8(pb, 0);
    avio_wl32(pb, 0);
    ffio_wfourcc(pb, avi_stream2fourcc(tag, stream_index, par->codec_type));

    avio_wl64(pb, 0);
    avio_wl32(pb, 0);
    for (j = 0; j < avi->master_index_max_size * 2; j++)
        avio_wl64(pb, 0);
    ff_end_tag(pb, avist->indexes.indx_start);
}
