
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netplay_room {int dummy; } ;


 struct netplay_room netplay_host_room ;

struct netplay_room* netplay_get_host_room(void)
{
   return &netplay_host_room;
}
