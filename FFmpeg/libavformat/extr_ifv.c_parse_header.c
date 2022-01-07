
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef long long uint32_t ;
struct TYPE_6__ {int pb; int metadata; TYPE_1__* priv_data; } ;
struct TYPE_5__ {long long sample_rate; int is_audio_present; long long total_vframes; long long total_aframes; void* height; void* width; } ;
typedef TYPE_1__ IFVContext ;
typedef TYPE_2__ AVFormatContext ;


 long long MKTAG (char,char,char,unsigned char) ;
 void* avio_rl16 (int ) ;
 long long avio_rl32 (int ) ;
 int avio_skip (int ,int) ;
 int avpriv_dict_set_timestamp (int *,char*,long long) ;
 int avpriv_request_sample (TYPE_2__*,char*,long long) ;

__attribute__((used)) static int parse_header(AVFormatContext *s)
{
    IFVContext *ifv = s->priv_data;
    uint32_t aud_magic;
    uint32_t vid_magic;

    avio_skip(s->pb, 0x34);
    avpriv_dict_set_timestamp(&s->metadata, "creation_time", avio_rl32(s->pb) * 1000000LL);
    avio_skip(s->pb, 0x24);

    ifv->width = avio_rl16(s->pb);
    ifv->height = avio_rl16(s->pb);

    avio_skip(s->pb, 0x8);
    vid_magic = avio_rl32(s->pb);

    if (vid_magic != MKTAG('H','2','6','4'))
        avpriv_request_sample(s, "Unknown video codec %x", vid_magic);

    avio_skip(s->pb, 0x2c);
    ifv->sample_rate = avio_rl32(s->pb);
    aud_magic = avio_rl32(s->pb);

    if (aud_magic == MKTAG('G','R','A','W')) {
        ifv->is_audio_present = 1;
    } else if (aud_magic == MKTAG('P','C','M','U')) {
        ifv->is_audio_present = 0;
    } else {
        avpriv_request_sample(s, "Unknown audio codec %x", aud_magic);
    }

    avio_skip(s->pb, 0x44);
    ifv->total_vframes = avio_rl32(s->pb);
    ifv->total_aframes = avio_rl32(s->pb);

    return 0;
}
