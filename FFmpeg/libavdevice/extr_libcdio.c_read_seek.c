
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {TYPE_2__** streams; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int cur_dts; } ;
struct TYPE_5__ {int paranoia; } ;
typedef TYPE_1__ CDIOContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int SEEK_SET ;
 int cdio_paranoia_seek (int ,int ,int ) ;

__attribute__((used)) static int read_seek(AVFormatContext *ctx, int stream_index, int64_t timestamp,
                     int flags)
{
    CDIOContext *s = ctx->priv_data;
    AVStream *st = ctx->streams[0];

    cdio_paranoia_seek(s->paranoia, timestamp, SEEK_SET);
    st->cur_dts = timestamp;
    return 0;
}
