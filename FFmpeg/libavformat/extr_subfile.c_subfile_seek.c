
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ end; scalar_t__ start; scalar_t__ pos; int h; } ;
typedef TYPE_2__ SubfileContext ;


 scalar_t__ AVERROR (int ) ;
 int AVSEEK_SIZE ;
 int EINVAL ;
 scalar_t__ INT64_MAX ;



 scalar_t__ ffurl_seek (int ,int ,int) ;
 int slave_seek (TYPE_1__*) ;

__attribute__((used)) static int64_t subfile_seek(URLContext *h, int64_t pos, int whence)
{
    SubfileContext *c = h->priv_data;
    int64_t new_pos, end;
    int ret;

    if (whence == AVSEEK_SIZE || whence == 129) {
        end = c->end;
        if (end == INT64_MAX && (end = ffurl_seek(c->h, 0, AVSEEK_SIZE)) < 0)
            return end;
    }

    if (whence == AVSEEK_SIZE)
        return end - c->start;
    switch (whence) {
    case 128:
        new_pos = c->start + pos;
        break;
    case 130:
        new_pos = c->pos + pos;
        break;
    case 129:
        new_pos = end + pos;
        break;
    }
    if (new_pos < c->start)
        return AVERROR(EINVAL);
    c->pos = new_pos;
    if ((ret = slave_seek(h)) < 0)
        return ret;
    return c->pos - c->start;
}
