
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* objects; } ;
struct TYPE_4__ {int fd; } ;
typedef TYPE_2__ AVDRMFrameDescriptor ;


 int av_free (TYPE_2__*) ;
 int close (int ) ;

__attribute__((used)) static void kmsgrab_free_desc(void *opaque, uint8_t *data)
{
    AVDRMFrameDescriptor *desc = (AVDRMFrameDescriptor*)data;

    close(desc->objects[0].fd);

    av_free(desc);
}
