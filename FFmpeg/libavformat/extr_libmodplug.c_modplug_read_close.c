
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int buf; int f; } ;
typedef TYPE_1__ ModPlugContext ;
typedef TYPE_2__ AVFormatContext ;


 int ModPlug_Unload (int ) ;
 int av_freep (int *) ;

__attribute__((used)) static int modplug_read_close(AVFormatContext *s)
{
    ModPlugContext *modplug = s->priv_data;
    ModPlug_Unload(modplug->f);
    av_freep(&modplug->buf);
    return 0;
}
