
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; TYPE_1__* iformat; int * pb; } ;
struct TYPE_7__ {int flags; int (* read_close ) (TYPE_2__*) ;int name; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMT_FLAG_CUSTOM_IO ;
 int AVFMT_NOFILE ;
 int avformat_free_context (TYPE_2__*) ;
 int avio_close (int *) ;
 int flush_packet_queue (TYPE_2__*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (TYPE_2__*) ;

void avformat_close_input(AVFormatContext **ps)
{
    AVFormatContext *s;
    AVIOContext *pb;

    if (!ps || !*ps)
        return;

    s = *ps;
    pb = s->pb;

    if ((s->iformat && strcmp(s->iformat->name, "image2") && s->iformat->flags & AVFMT_NOFILE) ||
        (s->flags & AVFMT_FLAG_CUSTOM_IO))
        pb = ((void*)0);

    flush_packet_queue(s);

    if (s->iformat)
        if (s->iformat->read_close)
            s->iformat->read_close(s);

    avformat_free_context(s);

    *ps = ((void*)0);

    avio_close(pb);
}
