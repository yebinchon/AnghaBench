
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EFBIG ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 int FFMIN (int ,int) ;
 int av_free (char*) ;
 char* av_realloc_f (char*,int,int) ;
 int avio_read (int *,char*,int) ;

__attribute__((used)) static int read_whole_file(AVIOContext *io, int max_size, char **rbuf)
{
    char *buf = ((void*)0);
    int size = 0, bufsize = 0, r;

    while (1) {
        if (bufsize - size < 1024) {
            bufsize = FFMIN(FFMAX(2 * bufsize, 8192), max_size);
            if (bufsize - size < 2) {
                size = AVERROR(EFBIG);
                goto fail;
            }
            buf = av_realloc_f(buf, bufsize, 1);
            if (!buf) {
                size = AVERROR(ENOMEM);
                goto fail;
            }
        }
        r = avio_read(io, buf, bufsize - size - 1);
        if (r == AVERROR_EOF)
            break;
        if (r < 0)
            goto fail;
        size += r;
    }
    buf[size] = 0;
    *rbuf = buf;
    return size;
fail:
    av_free(buf);
    return size;
}
