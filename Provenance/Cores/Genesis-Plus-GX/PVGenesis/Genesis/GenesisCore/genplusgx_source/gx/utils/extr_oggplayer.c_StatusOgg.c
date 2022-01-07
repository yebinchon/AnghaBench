
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; scalar_t__ eof; } ;


 scalar_t__ ogg_thread_running ;
 TYPE_1__ private_ogg ;

int StatusOgg()
{
  if (ogg_thread_running == 0)
    return -1;
  else if (private_ogg.eof)
    return 255;
  else if (private_ogg.flag & 128)
    return 2;
  else
    return 1;
}
