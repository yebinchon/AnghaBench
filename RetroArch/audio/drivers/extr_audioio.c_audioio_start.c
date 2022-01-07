
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pause; } ;
struct audio_info {TYPE_1__ play; } ;


 int AUDIO_FLUSH ;
 int AUDIO_GETINFO ;
 int AUDIO_SETINFO ;
 scalar_t__ ioctl (int,int ,struct audio_info*) ;

__attribute__((used)) static bool audioio_start(void *data, bool is_shutdown)
{
   struct audio_info info;
   int *fd = (int*)data;






   if (ioctl(*fd, AUDIO_GETINFO, &info) < 0)
      return 0;

   info.play.pause = 0;

   return ioctl(*fd, AUDIO_SETINFO, &info) == 0;
}
