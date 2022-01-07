
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t (* sample_batch_cb ) (int const*,size_t) ;} ;
struct TYPE_6__ {TYPE_1__ cbs; int stall; } ;
typedef TYPE_2__ netplay_t ;
typedef int int16_t ;


 TYPE_2__* netplay_data ;
 int netplay_should_skip (TYPE_2__*) ;
 size_t stub1 (int const*,size_t) ;

size_t audio_sample_batch_net(const int16_t *data, size_t frames)
{
   netplay_t *netplay = netplay_data;
   if (!netplay_should_skip(netplay) && !netplay->stall)
      return netplay->cbs.sample_batch_cb(data, frames);
   return frames;
}
