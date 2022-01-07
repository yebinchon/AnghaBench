
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;
 int ENOMEM ;
 int av_free (int *) ;
 int * av_malloc (int) ;
 int * avio_alloc_context (int *,int,int ,int *,int *,int *,int *) ;

__attribute__((used)) static int open_null_ctx(AVIOContext **ctx)
{
    int buf_size = 32768;
    uint8_t *buf = av_malloc(buf_size);
    if (!buf)
        return AVERROR(ENOMEM);
    *ctx = avio_alloc_context(buf, buf_size, AVIO_FLAG_WRITE, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (!*ctx) {
        av_free(buf);
        return AVERROR(ENOMEM);
    }
    return 0;
}
