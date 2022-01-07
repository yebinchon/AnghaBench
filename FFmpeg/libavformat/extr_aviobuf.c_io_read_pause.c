
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* prot; } ;
struct TYPE_5__ {TYPE_3__* h; } ;
struct TYPE_4__ {int (* url_read_pause ) (TYPE_3__*,int) ;} ;
typedef TYPE_2__ AVIOInternal ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int stub1 (TYPE_3__*,int) ;

__attribute__((used)) static int io_read_pause(void *opaque, int pause)
{
    AVIOInternal *internal = opaque;
    if (!internal->h->prot->url_read_pause)
        return AVERROR(ENOSYS);
    return internal->h->prot->url_read_pause(internal->h, pause);
}
