
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int av_des; } ;
typedef TYPE_1__ OMAContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_free (int ) ;

__attribute__((used)) static int oma_read_close(AVFormatContext *s)
{
    OMAContext *oc = s->priv_data;
    av_free(oc->av_des);
    return 0;
}
