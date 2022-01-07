
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int q; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASSContext ;


 int ff_subtitles_queue_clean (int *) ;

__attribute__((used)) static int ass_read_close(AVFormatContext *s)
{
    ASSContext *ass = s->priv_data;
    ff_subtitles_queue_clean(&ass->q);
    return 0;
}
