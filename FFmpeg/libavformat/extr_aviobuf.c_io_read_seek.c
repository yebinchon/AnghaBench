
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* prot; } ;
struct TYPE_5__ {TYPE_3__* h; } ;
struct TYPE_4__ {int (* url_read_seek ) (TYPE_3__*,int,int ,int) ;} ;
typedef TYPE_2__ AVIOInternal ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int stub1 (TYPE_3__*,int,int ,int) ;

__attribute__((used)) static int64_t io_read_seek(void *opaque, int stream_index, int64_t timestamp, int flags)
{
    AVIOInternal *internal = opaque;
    if (!internal->h->prot->url_read_seek)
        return AVERROR(ENOSYS);
    return internal->h->prot->url_read_seek(internal->h, stream_index, timestamp, flags);
}
