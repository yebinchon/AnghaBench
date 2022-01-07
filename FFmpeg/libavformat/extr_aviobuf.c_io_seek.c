
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_2__ {int h; } ;
typedef TYPE_1__ AVIOInternal ;


 int ffurl_seek (int ,int ,int) ;

__attribute__((used)) static int64_t io_seek(void *opaque, int64_t offset, int whence)
{
    AVIOInternal *internal = opaque;
    return ffurl_seek(internal->h, offset, whence);
}
