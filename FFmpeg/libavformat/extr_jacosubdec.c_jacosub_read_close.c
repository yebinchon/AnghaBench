
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int q; } ;
typedef TYPE_1__ JACOsubContext ;
typedef TYPE_2__ AVFormatContext ;


 int ff_subtitles_queue_clean (int *) ;

__attribute__((used)) static int jacosub_read_close(AVFormatContext *s)
{
    JACOsubContext *jacosub = s->priv_data;
    ff_subtitles_queue_clean(&jacosub->q);
    return 0;
}
