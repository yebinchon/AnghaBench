
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int AVIOContext ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int FFMIN (size_t,int) ;
 int av_bprint_append_data (int *,char*,int) ;
 int av_bprint_is_complete (int *) ;
 int avio_read (int *,char*,int ) ;

int avio_read_to_bprint(AVIOContext *h, AVBPrint *pb, size_t max_size)
{
    int ret;
    char buf[1024];
    while (max_size) {
        ret = avio_read(h, buf, FFMIN(max_size, sizeof(buf)));
        if (ret == AVERROR_EOF)
            return 0;
        if (ret <= 0)
            return ret;
        av_bprint_append_data(pb, buf, ret);
        if (!av_bprint_is_complete(pb))
            return AVERROR(ENOMEM);
        max_size -= ret;
    }
    return 0;
}
