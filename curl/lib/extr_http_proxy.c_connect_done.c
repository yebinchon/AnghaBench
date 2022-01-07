
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_connect_state {int tunnel_state; } ;
struct connectdata {int data; struct http_connect_state* connect_state; } ;


 int TUNNEL_COMPLETE ;
 int infof (int ,char*) ;

__attribute__((used)) static void connect_done(struct connectdata *conn)
{
  struct http_connect_state *s = conn->connect_state;
  s->tunnel_state = TUNNEL_COMPLETE;
  infof(conn->data, "CONNECT phase completed!\n");
}
