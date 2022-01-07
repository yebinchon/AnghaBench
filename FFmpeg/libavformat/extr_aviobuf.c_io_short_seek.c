
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h; } ;
typedef TYPE_1__ AVIOInternal ;


 int ffurl_get_short_seek (int ) ;

__attribute__((used)) static int io_short_seek(void *opaque)
{
    AVIOInternal *internal = opaque;
    return ffurl_get_short_seek(internal->h);
}
