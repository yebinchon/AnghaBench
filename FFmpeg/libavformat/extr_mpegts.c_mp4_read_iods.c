
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int descr_count; int pb; } ;
typedef int Mp4Descr ;
typedef TYPE_1__ MP4DescrParseContext ;
typedef int AVFormatContext ;


 int MP4IODescrTag ;
 int avio_tell (int *) ;
 int init_MP4DescrParseContext (TYPE_1__*,int *,int const*,unsigned int,int *,int) ;
 int parse_mp4_descr (TYPE_1__*,int ,unsigned int,int ) ;

__attribute__((used)) static int mp4_read_iods(AVFormatContext *s, const uint8_t *buf, unsigned size,
                         Mp4Descr *descr, int *descr_count, int max_descr_count)
{
    MP4DescrParseContext d;
    int ret;

    ret = init_MP4DescrParseContext(&d, s, buf, size, descr, max_descr_count);
    if (ret < 0)
        return ret;

    ret = parse_mp4_descr(&d, avio_tell(&d.pb), size, MP4IODescrTag);

    *descr_count = d.descr_count;
    return ret;
}
