
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_dict_set (int *,char const*,char*,int ) ;
 int av_free (char*) ;
 char* av_mallocz (unsigned int) ;
 int avio_read (int *,char*,unsigned int) ;
 int avio_seek (int *,unsigned int,int ) ;

__attribute__((used)) static int dss_read_metadata_string(AVFormatContext *s, unsigned int offset,
                                    unsigned int size, const char *key)
{
    AVIOContext *pb = s->pb;
    char *value;
    int ret;

    avio_seek(pb, offset, SEEK_SET);

    value = av_mallocz(size + 1);
    if (!value)
        return AVERROR(ENOMEM);

    ret = avio_read(s->pb, value, size);
    if (ret < size) {
        ret = ret < 0 ? ret : AVERROR_EOF;
        goto exit;
    }

    ret = av_dict_set(&s->metadata, key, value, 0);

exit:
    av_free(value);
    return ret;
}
