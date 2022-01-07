
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {int metadata; } ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int atoi (char*) ;
 TYPE_2__* av_dict_get (int ,char*,int *,int ) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int mov_write_trkn_tag(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s, int disc)
{
    AVDictionaryEntry *t = av_dict_get(s->metadata,
                                       disc ? "disc" : "track",
                                       ((void*)0), 0);
    int size = 0, track = t ? atoi(t->value) : 0;
    if (track) {
        int tracks = 0;
        char *slash = strchr(t->value, '/');
        if (slash)
            tracks = atoi(slash + 1);
        avio_wb32(pb, 32);
        ffio_wfourcc(pb, disc ? "disk" : "trkn");
        avio_wb32(pb, 24);
        ffio_wfourcc(pb, "data");
        avio_wb32(pb, 0);
        avio_wb32(pb, 0);
        avio_wb16(pb, 0);
        avio_wb16(pb, track);
        avio_wb16(pb, tracks);
        avio_wb16(pb, 0);
        size = 32;
    }
    return size;
}
