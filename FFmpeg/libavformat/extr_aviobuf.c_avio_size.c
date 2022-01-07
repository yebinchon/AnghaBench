
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ written; scalar_t__ (* seek ) (int ,int,int ) ;int pos; int opaque; } ;
typedef TYPE_1__ AVIOContext ;


 scalar_t__ AVERROR (int ) ;
 int AVSEEK_SIZE ;
 int EINVAL ;
 int ENOSYS ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ stub1 (int ,int,int ) ;
 scalar_t__ stub2 (int ,int,int ) ;
 scalar_t__ stub3 (int ,int,int ) ;

int64_t avio_size(AVIOContext *s)
{
    int64_t size;

    if (!s)
        return AVERROR(EINVAL);

    if (s->written)
        return s->written;

    if (!s->seek)
        return AVERROR(ENOSYS);
    size = s->seek(s->opaque, 0, AVSEEK_SIZE);
    if (size < 0) {
        if ((size = s->seek(s->opaque, -1, SEEK_END)) < 0)
            return size;
        size++;
        s->seek(s->opaque, s->pos, SEEK_SET);
    }
    return size;
}
