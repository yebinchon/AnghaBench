
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int pb; } ;
typedef TYPE_1__ MP4DescrParseContext ;


 int parse_mp4_descr (TYPE_1__*,int ,int,int ) ;
 int update_offsets (int *,int *,int*) ;

__attribute__((used)) static int parse_mp4_descr_arr(MP4DescrParseContext *d, int64_t off, int len)
{
    while (len > 0) {
        int ret = parse_mp4_descr(d, off, len, 0);
        if (ret < 0)
            return ret;
        update_offsets(&d->pb, &off, &len);
    }
    return 0;
}
