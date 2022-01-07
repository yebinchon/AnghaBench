
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {void* frames; void* header_filesize; } ;
typedef TYPE_1__ MP3DecContext ;
typedef int AVStream ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ MKBETAG (char,char,char,char) ;
 int SEEK_SET ;
 int avio_rb16 (int ) ;
 void* avio_rb32 (int ) ;
 int avio_seek (int ,scalar_t__,int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static void mp3_parse_vbri_tag(AVFormatContext *s, AVStream *st, int64_t base)
{
    uint32_t v;
    MP3DecContext *mp3 = s->priv_data;


    avio_seek(s->pb, base + 4 + 32, SEEK_SET);
    v = avio_rb32(s->pb);
    if (v == MKBETAG('V', 'B', 'R', 'I')) {

        if (avio_rb16(s->pb) == 1) {

            avio_skip(s->pb, 4);
            mp3->header_filesize = avio_rb32(s->pb);
            mp3->frames = avio_rb32(s->pb);
        }
    }
}
