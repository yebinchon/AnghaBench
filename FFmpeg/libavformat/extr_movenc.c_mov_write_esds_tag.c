
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int buffer_size; int avg_bitrate; int max_bitrate; } ;
struct TYPE_7__ {int vos_len; int vos_data; TYPE_1__* par; int st; int track_id; } ;
struct TYPE_6__ {scalar_t__ codec_id; int sample_rate; scalar_t__ codec_type; int bit_rate; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;
typedef TYPE_3__ AVCPBProperties ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AV_CODEC_ID_DVD_SUBTITLE ;
 scalar_t__ AV_CODEC_ID_MP2 ;
 scalar_t__ AV_CODEC_ID_MP3 ;
 int AV_PKT_DATA_CPB_PROPERTIES ;
 unsigned int FFMAX (int ,unsigned int) ;
 unsigned int FFMAX3 (int ,int ,unsigned int) ;
 scalar_t__ av_stream_get_side_data (int ,int ,int *) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb24 (int *,int) ;
 int avio_wb32 (int *,unsigned int) ;
 int avio_write (int *,int ,int) ;
 unsigned int compute_avg_bitrate (TYPE_2__*) ;
 int ff_codec_get_tag (int ,scalar_t__) ;
 int ff_mp4_obj_type ;
 int ffio_wfourcc (int *,char*) ;
 int put_descr (int *,int,int) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_esds_tag(AVIOContext *pb, MOVTrack *track)
{
    AVCPBProperties *props;
    int64_t pos = avio_tell(pb);
    int decoder_specific_info_len = track->vos_len ? 5 + track->vos_len : 0;
    unsigned avg_bitrate;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "esds");
    avio_wb32(pb, 0);


    put_descr(pb, 0x03, 3 + 5+13 + decoder_specific_info_len + 5+1);
    avio_wb16(pb, track->track_id);
    avio_w8(pb, 0x00);


    put_descr(pb, 0x04, 13 + decoder_specific_info_len);


    if ((track->par->codec_id == AV_CODEC_ID_MP2 ||
         track->par->codec_id == AV_CODEC_ID_MP3) &&
        track->par->sample_rate > 24000)
        avio_w8(pb, 0x6B);
    else
        avio_w8(pb, ff_codec_get_tag(ff_mp4_obj_type, track->par->codec_id));



    if (track->par->codec_id == AV_CODEC_ID_DVD_SUBTITLE)
        avio_w8(pb, (0x38 << 2) | 1);
    else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO)
        avio_w8(pb, 0x15);
    else
        avio_w8(pb, 0x11);

    props = (AVCPBProperties*)av_stream_get_side_data(track->st, AV_PKT_DATA_CPB_PROPERTIES,
                                                      ((void*)0));

    avio_wb24(pb, props ? props->buffer_size / 8 : 0);

    avg_bitrate = compute_avg_bitrate(track);
    avio_wb32(pb, props ? FFMAX3(props->max_bitrate, props->avg_bitrate, avg_bitrate) : FFMAX(track->par->bit_rate, avg_bitrate));
    avio_wb32(pb, avg_bitrate);

    if (track->vos_len) {

        put_descr(pb, 0x05, track->vos_len);
        avio_write(pb, track->vos_data, track->vos_len);
    }


    put_descr(pb, 0x06, 1);
    avio_w8(pb, 0x02);
    return update_size(pb, pos);
}
