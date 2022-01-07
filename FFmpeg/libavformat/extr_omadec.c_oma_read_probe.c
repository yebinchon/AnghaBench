
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__* buf; unsigned int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ const EA3_HEADER_SIZE ;
 int ID3v2_EA3_MAGIC ;
 unsigned int ID3v2_HEADER_SIZE ;
 scalar_t__ ff_id3v2_match (scalar_t__ const*,int ) ;
 unsigned int ff_id3v2_tag_len (scalar_t__ const*) ;
 int memcmp (scalar_t__ const*,char*,int) ;

__attribute__((used)) static int oma_read_probe(const AVProbeData *p)
{
    const uint8_t *buf = p->buf;
    unsigned tag_len = 0;

    if (p->buf_size >= ID3v2_HEADER_SIZE && ff_id3v2_match(buf, ID3v2_EA3_MAGIC))
        tag_len = ff_id3v2_tag_len(buf);


    if (p->buf_size < tag_len + 5)

        return tag_len ? AVPROBE_SCORE_EXTENSION/2 : 0;

    buf += tag_len;

    if (!memcmp(buf, "EA3", 3) && !buf[4] && buf[5] == EA3_HEADER_SIZE)
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}
