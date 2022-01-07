
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ (* read_seek ) (int ,int,scalar_t__,int) ;scalar_t__ (* seek ) (int ,int ,int ) ;scalar_t__ pos; int opaque; int buf_end; int buf_ptr; } ;
typedef TYPE_1__ AVIOContext ;


 scalar_t__ AVERROR (int ) ;
 int ENOSYS ;
 int SEEK_CUR ;
 scalar_t__ stub1 (int ,int,scalar_t__,int) ;
 scalar_t__ stub2 (int ,int ,int ) ;

int64_t avio_seek_time(AVIOContext *s, int stream_index,
                       int64_t timestamp, int flags)
{
    int64_t ret;
    if (!s->read_seek)
        return AVERROR(ENOSYS);
    ret = s->read_seek(s->opaque, stream_index, timestamp, flags);
    if (ret >= 0) {
        int64_t pos;
        s->buf_ptr = s->buf_end;
        pos = s->seek(s->opaque, 0, SEEK_CUR);
        if (pos >= 0)
            s->pos = pos;
        else if (pos != AVERROR(ENOSYS))
            ret = pos;
    }
    return ret;
}
