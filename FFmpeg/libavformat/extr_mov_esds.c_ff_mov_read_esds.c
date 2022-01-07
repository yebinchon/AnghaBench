
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nb_streams; int ** streams; } ;
typedef int AVStream ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int MP4DecConfigDescrTag ;
 int MP4ESDescrTag ;
 int avio_rb16 (int *) ;
 int avio_rb32 (int *) ;
 int ff_mp4_parse_es_descr (int *,int *) ;
 int ff_mp4_read_dec_config_descr (TYPE_1__*,int *,int *) ;
 int ff_mp4_read_descr (TYPE_1__*,int *,int*) ;

int ff_mov_read_esds(AVFormatContext *fc, AVIOContext *pb)
{
    AVStream *st;
    int tag, ret = 0;

    if (fc->nb_streams < 1)
        return 0;
    st = fc->streams[fc->nb_streams-1];

    avio_rb32(pb);
    ff_mp4_read_descr(fc, pb, &tag);
    if (tag == MP4ESDescrTag) {
        ff_mp4_parse_es_descr(pb, ((void*)0));
    } else
        avio_rb16(pb);

    ff_mp4_read_descr(fc, pb, &tag);
    if (tag == MP4DecConfigDescrTag)
        ret = ff_mp4_read_dec_config_descr(fc, st, pb);

    return ret;
}
