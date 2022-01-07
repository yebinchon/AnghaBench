
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netplay_t ;


 scalar_t__ netplay_can_poll (int *) ;
 int * netplay_data ;
 int netplay_poll (int *) ;
 int netplay_should_skip (int *) ;

void input_poll_net(void)
{
   netplay_t *netplay = netplay_data;
   if (!netplay_should_skip(netplay) && netplay_can_poll(netplay))
      netplay_poll(netplay);
}
