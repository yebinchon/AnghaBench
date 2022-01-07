
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ pos; int h; } ;
typedef TYPE_2__ SubfileContext ;


 scalar_t__ AVERROR_BUG ;
 int AV_LOG_ERROR ;
 int SEEK_SET ;
 int av_err2str (scalar_t__) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 scalar_t__ ffurl_seek (int ,scalar_t__,int ) ;

__attribute__((used)) static int slave_seek(URLContext *h)
{
    SubfileContext *c = h->priv_data;
    int64_t ret;

    if ((ret = ffurl_seek(c->h, c->pos, SEEK_SET)) != c->pos) {
        if (ret >= 0)
            ret = AVERROR_BUG;
        av_log(h, AV_LOG_ERROR, "Impossible to seek in file: %s\n",
               av_err2str(ret));
        return ret;
    }
    return 0;
}
