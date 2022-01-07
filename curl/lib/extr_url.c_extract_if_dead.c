
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curltime {int dummy; } ;
struct connectdata {int connection_id; int * sock; struct Curl_easy* data; TYPE_1__* handler; } ;
struct Curl_easy {int dummy; } ;
struct TYPE_2__ {unsigned int (* connection_check ) (struct connectdata*,int ) ;} ;


 int CONNCHECK_ISDEAD ;
 unsigned int CONNRESULT_DEAD ;
 int CONN_INUSE (struct connectdata*) ;
 int Curl_conncache_remove_conn (struct Curl_easy*,struct connectdata*,int) ;
 struct curltime Curl_now () ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int SocketIsDead (int ) ;
 int TRUE ;
 scalar_t__ conn_maxage (struct Curl_easy*,struct connectdata*,struct curltime) ;
 int infof (struct Curl_easy*,char*,int ) ;
 unsigned int stub1 (struct connectdata*,int ) ;

__attribute__((used)) static bool extract_if_dead(struct connectdata *conn,
                            struct Curl_easy *data)
{
  if(!CONN_INUSE(conn) && !conn->data) {


    bool dead;
    struct curltime now = Curl_now();
    if(conn_maxage(data, conn, now)) {
      dead = TRUE;
    }
    else if(conn->handler->connection_check) {


      unsigned int state;
      struct Curl_easy *olddata = conn->data;
      conn->data = data;
      state = conn->handler->connection_check(conn, CONNCHECK_ISDEAD);
      conn->data = olddata;
      dead = (state & CONNRESULT_DEAD);
    }
    else {

      dead = SocketIsDead(conn->sock[FIRSTSOCKET]);
    }

    if(dead) {
      infof(data, "Connection %ld seems to be dead!\n", conn->connection_id);
      Curl_conncache_remove_conn(data, conn, FALSE);
      return TRUE;
    }
  }
  return FALSE;
}
