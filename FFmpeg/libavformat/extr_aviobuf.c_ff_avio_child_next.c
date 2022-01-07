
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* opaque; } ;
struct TYPE_3__ {void* h; } ;
typedef TYPE_1__ AVIOInternal ;
typedef TYPE_2__ AVIOContext ;



__attribute__((used)) static void *ff_avio_child_next(void *obj, void *prev)
{
    AVIOContext *s = obj;
    AVIOInternal *internal = s->opaque;
    return prev ? ((void*)0) : internal->h;
}
