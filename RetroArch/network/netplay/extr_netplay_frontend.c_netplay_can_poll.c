
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int can_poll; } ;
typedef TYPE_1__ netplay_t ;



__attribute__((used)) static bool netplay_can_poll(netplay_t *netplay)
{
   if (!netplay)
      return 0;
   return netplay->can_poll;
}
