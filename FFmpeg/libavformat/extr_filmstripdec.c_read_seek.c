
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int pb; TYPE_2__** streams; } ;
struct TYPE_6__ {TYPE_1__* codecpar; } ;
struct TYPE_5__ {int width; int height; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int FFMAX (int ,int ) ;
 int SEEK_SET ;
 scalar_t__ avio_seek (int ,int,int ) ;

__attribute__((used)) static int read_seek(AVFormatContext *s, int stream_index, int64_t timestamp, int flags)
{
    AVStream *st = s->streams[stream_index];
    if (avio_seek(s->pb, FFMAX(timestamp, 0) * st->codecpar->width * st->codecpar->height * 4, SEEK_SET) < 0)
        return -1;
    return 0;
}
