
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ extradata_size; int extradata; } ;
struct TYPE_6__ {int pb; TYPE_1__** streams; } ;
struct TYPE_5__ {TYPE_3__* codecpar; } ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 int avio_flush (int ) ;
 int avio_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int jacosub_write_header(AVFormatContext *s)
{
    const AVCodecParameters *par = s->streams[0]->codecpar;

    if (par->extradata_size) {
        avio_write(s->pb, par->extradata, par->extradata_size - 1);
        avio_flush(s->pb);
    }
    return 0;
}
