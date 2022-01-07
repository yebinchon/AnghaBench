
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ self_mode; scalar_t__ is_server; } ;
typedef TYPE_1__ netplay_t ;


 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;

__attribute__((used)) static bool netplay_is_alive(netplay_t *netplay)
{
   if (!netplay)
      return 0;
   return (netplay->is_server) ||
          (!netplay->is_server && netplay->self_mode >= NETPLAY_CONNECTION_CONNECTED);
}
