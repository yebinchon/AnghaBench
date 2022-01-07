
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int metadata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int FF_ARRAY_ELEMS (int *) ;
 int av_dict_set (int *,int ,char*,int ) ;
 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int * ff_rm_metadata ;
 int get_strl (int *,char*,int,int) ;

__attribute__((used)) static void rm_read_metadata(AVFormatContext *s, AVIOContext *pb, int wide)
{
    char buf[1024];
    int i;

    for (i=0; i<FF_ARRAY_ELEMS(ff_rm_metadata); i++) {
        int len = wide ? avio_rb16(pb) : avio_r8(pb);
        if (len > 0) {
            get_strl(pb, buf, sizeof(buf), len);
            av_dict_set(&s->metadata, ff_rm_metadata[i], buf, 0);
        }
    }
}
