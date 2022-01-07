
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_4__ {int priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int ff_rm_free_rmstream (int ) ;

__attribute__((used)) static int rm_read_close(AVFormatContext *s)
{
    int i;

    for (i=0;i<s->nb_streams;i++)
        ff_rm_free_rmstream(s->streams[i]->priv_data);

    return 0;
}
