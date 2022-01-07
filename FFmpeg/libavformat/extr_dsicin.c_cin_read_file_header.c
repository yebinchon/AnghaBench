
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int video_frame_size; int audio_frequency; int audio_bits; scalar_t__ audio_stereo; void* audio_frame_size; void* video_frame_height; void* video_frame_width; } ;
struct TYPE_5__ {TYPE_1__ file_header; } ;
typedef TYPE_1__ CinFileHeader ;
typedef TYPE_2__ CinDemuxContext ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 void* avio_r8 (int *) ;
 void* avio_rl16 (int *) ;
 int avio_rl32 (int *) ;

__attribute__((used)) static int cin_read_file_header(CinDemuxContext *cin, AVIOContext *pb) {
    CinFileHeader *hdr = &cin->file_header;

    if (avio_rl32(pb) != 0x55AA0000)
        return AVERROR_INVALIDDATA;

    hdr->video_frame_size = avio_rl32(pb);
    hdr->video_frame_width = avio_rl16(pb);
    hdr->video_frame_height = avio_rl16(pb);
    hdr->audio_frequency = avio_rl32(pb);
    hdr->audio_bits = avio_r8(pb);
    hdr->audio_stereo = avio_r8(pb);
    hdr->audio_frame_size = avio_rl16(pb);

    if (hdr->audio_frequency != 22050 || hdr->audio_bits != 16 || hdr->audio_stereo != 0)
        return AVERROR_INVALIDDATA;

    return 0;
}
