
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ buf_size; int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ HEADER_SIZE ;
 scalar_t__ MKTAG (char,char,char,int ) ;
 scalar_t__ bytestream_get_le16 (int const**) ;
 scalar_t__ bytestream_get_le32 (int const**) ;

__attribute__((used)) static int msnwc_tcp_probe(const AVProbeData *p)
{
    int i;

    for (i = 0; i + HEADER_SIZE <= p->buf_size; i++) {
        uint16_t width, height;
        uint32_t fourcc;
        const uint8_t *bytestream = p->buf + i;

        if (bytestream_get_le16(&bytestream) != HEADER_SIZE)
            continue;
        width = bytestream_get_le16(&bytestream);
        height = bytestream_get_le16(&bytestream);
        if (!(width == 320 &&
              height == 240) && !(width == 160 && height == 120))
            continue;
        bytestream += 2;
        bytestream += 4;
        fourcc = bytestream_get_le32(&bytestream);
        if (fourcc != MKTAG('M', 'L', '2', '0'))
            continue;

        if (i) {
            if (i < 14)
                return AVPROBE_SCORE_MAX / 2;
            else
                return AVPROBE_SCORE_MAX / 3;
        } else {
            return AVPROBE_SCORE_MAX;
        }
    }

    return 0;
}
