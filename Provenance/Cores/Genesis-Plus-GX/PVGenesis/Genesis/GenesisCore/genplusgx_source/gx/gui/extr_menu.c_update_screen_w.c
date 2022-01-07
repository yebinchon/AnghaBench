
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int screen_w; } ;
struct TYPE_4__ {int viWidth; int viXOrigin; } ;


 int VIDEO_Configure (TYPE_1__*) ;
 int VIDEO_Flush () ;
 int VI_MAX_WIDTH_NTSC ;
 TYPE_2__ config ;
 TYPE_1__* vmode ;

__attribute__((used)) static void update_screen_w(void)
{
  vmode->viWidth = config.screen_w;
  vmode->viXOrigin = (VI_MAX_WIDTH_NTSC -config.screen_w)/2;
  VIDEO_Configure(vmode);
  VIDEO_Flush();
}
