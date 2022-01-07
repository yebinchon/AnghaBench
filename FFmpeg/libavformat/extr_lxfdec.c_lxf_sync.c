
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR_EOF ;
 int LXF_IDENT ;
 int LXF_IDENT_LENGTH ;
 scalar_t__ avio_feof (int ) ;
 int avio_r8 (int ) ;
 int avio_read (int ,int *,int) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int memcpy (int *,int ,int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static int lxf_sync(AVFormatContext *s, uint8_t *header)
{
    uint8_t buf[LXF_IDENT_LENGTH];
    int ret;

    if ((ret = avio_read(s->pb, buf, LXF_IDENT_LENGTH)) != LXF_IDENT_LENGTH)
        return ret < 0 ? ret : AVERROR_EOF;

    while (memcmp(buf, LXF_IDENT, LXF_IDENT_LENGTH)) {
        if (avio_feof(s->pb))
            return AVERROR_EOF;

        memmove(buf, &buf[1], LXF_IDENT_LENGTH-1);
        buf[LXF_IDENT_LENGTH-1] = avio_r8(s->pb);
    }

    memcpy(header, LXF_IDENT, LXF_IDENT_LENGTH);

    return 0;
}
