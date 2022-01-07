
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buffer_size; } ;
struct audio_info {TYPE_1__ play; } ;


 int AUDIO_GETINFO ;
 scalar_t__ ioctl (int,int ,struct audio_info*) ;

__attribute__((used)) static size_t audioio_buffer_size(void *data)
{
   struct audio_info info;
   int *fd = (int*)data;

   if (ioctl(*fd, AUDIO_GETINFO, &info) < 0)
      return 0;

   return info.play.buffer_size;
}
