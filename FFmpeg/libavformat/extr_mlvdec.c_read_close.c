
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int * pb; } ;
typedef TYPE_1__ MlvContext ;
typedef TYPE_2__ AVFormatContext ;


 int ff_format_io_close (TYPE_2__*,int *) ;

__attribute__((used)) static int read_close(AVFormatContext *s)
{
    MlvContext *mlv = s->priv_data;
    int i;
    for (i = 0; i < 100; i++)
        ff_format_io_close(s, &mlv->pb[i]);
    return 0;
}
