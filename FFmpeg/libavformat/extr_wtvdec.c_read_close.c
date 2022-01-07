
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pb; int index_entries; } ;
typedef TYPE_1__ WtvContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;
 int wtvfile_close (int ) ;

__attribute__((used)) static int read_close(AVFormatContext *s)
{
    WtvContext *wtv = s->priv_data;
    av_freep(&wtv->index_entries);
    wtvfile_close(wtv->pb);
    return 0;
}
