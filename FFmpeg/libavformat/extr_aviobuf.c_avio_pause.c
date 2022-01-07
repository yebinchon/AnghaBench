
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* read_pause ) (int ,int) ;int opaque; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int stub1 (int ,int) ;

int avio_pause(AVIOContext *s, int pause)
{
    if (!s->read_pause)
        return AVERROR(ENOSYS);
    return s->read_pause(s->opaque, pause);
}
