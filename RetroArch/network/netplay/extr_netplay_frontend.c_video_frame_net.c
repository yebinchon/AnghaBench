
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* frame_cb ) (void const*,unsigned int,unsigned int,size_t) ;} ;
struct TYPE_6__ {TYPE_1__ cbs; } ;
typedef TYPE_2__ netplay_t ;


 TYPE_2__* netplay_data ;
 int netplay_should_skip (TYPE_2__*) ;
 int stub1 (void const*,unsigned int,unsigned int,size_t) ;

void video_frame_net(const void *data, unsigned width,
      unsigned height, size_t pitch)
{
   netplay_t *netplay = netplay_data;
   if (!netplay_should_skip(netplay))
      netplay->cbs.frame_cb(data, width, height, pitch);
}
