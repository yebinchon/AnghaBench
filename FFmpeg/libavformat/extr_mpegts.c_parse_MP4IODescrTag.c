
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int pb; } ;
typedef TYPE_1__ MP4DescrParseContext ;


 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int parse_mp4_descr_arr (TYPE_1__*,int ,int) ;
 int update_offsets (int *,int *,int*) ;

__attribute__((used)) static int parse_MP4IODescrTag(MP4DescrParseContext *d, int64_t off, int len)
{
    avio_rb16(&d->pb);
    avio_r8(&d->pb);
    avio_r8(&d->pb);
    avio_r8(&d->pb);
    avio_r8(&d->pb);
    avio_r8(&d->pb);
    update_offsets(&d->pb, &off, &len);
    return parse_mp4_descr_arr(d, off, len);
}
