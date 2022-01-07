
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {TYPE_1__* connect_state; } ;
struct TYPE_2__ {scalar_t__ tunnel_state; } ;


 scalar_t__ TUNNEL_COMPLETE ;

bool Curl_connect_complete(struct connectdata *conn)
{
  return !conn->connect_state ||
    (conn->connect_state->tunnel_state == TUNNEL_COMPLETE);
}
