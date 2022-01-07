
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* sample_cb ) (int ,int ) ;} ;
struct TYPE_6__ {TYPE_1__ cbs; int stall; } ;
typedef TYPE_2__ netplay_t ;
typedef int int16_t ;


 TYPE_2__* netplay_data ;
 int netplay_should_skip (TYPE_2__*) ;
 int stub1 (int ,int ) ;

void audio_sample_net(int16_t left, int16_t right)
{
   netplay_t *netplay = netplay_data;
   if (!netplay_should_skip(netplay) && !netplay->stall)
      netplay->cbs.sample_cb(left, right);
}
