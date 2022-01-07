
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int NEEDS_CHECKING ;
 int av_free (char*) ;
 char* av_malloc (int) ;
 int avio_read (int *,int *,int) ;

__attribute__((used)) static int ebml_read_ascii(AVIOContext *pb, int size, char **str)
{
    char *res;
    int ret;



    if (!(res = av_malloc(size + 1)))
        return AVERROR(ENOMEM);
    if ((ret = avio_read(pb, (uint8_t *) res, size)) != size) {
        av_free(res);
        return ret < 0 ? ret : NEEDS_CHECKING;
    }
    (res)[size] = '\0';
    av_free(*str);
    *str = res;

    return 0;
}
