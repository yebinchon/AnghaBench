
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int size_max; int len; char* str; } ;
typedef TYPE_1__ AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int EIO ;
 int ENOMEM ;
 int FFMIN (int,unsigned int) ;
 int UINT_MAX ;
 scalar_t__ av_bprint_is_allocated (TYPE_1__*) ;
 int av_bprint_is_complete (TYPE_1__*) ;
 char* av_realloc (char*,unsigned int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int av_bprint_alloc(AVBPrint *buf, unsigned room)
{
    char *old_str, *new_str;
    unsigned min_size, new_size;

    if (buf->size == buf->size_max)
        return AVERROR(EIO);
    if (!av_bprint_is_complete(buf))
        return AVERROR_INVALIDDATA;
    min_size = buf->len + 1 + FFMIN(UINT_MAX - buf->len - 1, room);
    new_size = buf->size > buf->size_max / 2 ? buf->size_max : buf->size * 2;
    if (new_size < min_size)
        new_size = FFMIN(buf->size_max, min_size);
    old_str = av_bprint_is_allocated(buf) ? buf->str : ((void*)0);
    new_str = av_realloc(old_str, new_size);
    if (!new_str)
        return AVERROR(ENOMEM);
    if (!old_str)
        memcpy(new_str, buf->str, buf->len + 1);
    buf->str = new_str;
    buf->size = new_size;
    return 0;
}
