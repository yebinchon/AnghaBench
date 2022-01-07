
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct conncache {TYPE_2__* closure_handle; } ;
struct TYPE_6__ {int hostcache; } ;
struct TYPE_7__ {TYPE_1__ dns; } ;


 int Curl_close (TYPE_2__**) ;
 int Curl_disconnect (TYPE_2__*,struct connectdata*,int ) ;
 int Curl_hostcache_clean (TYPE_2__*,int ) ;
 int FALSE ;
 int SIGPIPE_VARIABLE (int ) ;
 struct connectdata* conncache_find_first_connection (struct conncache*) ;
 int connclose (struct connectdata*,char*) ;
 int pipe_st ;
 int sigpipe_ignore (TYPE_2__*,int *) ;
 int sigpipe_restore (int *) ;

void Curl_conncache_close_all_connections(struct conncache *connc)
{
  struct connectdata *conn;

  conn = conncache_find_first_connection(connc);
  while(conn) {
    SIGPIPE_VARIABLE(pipe_st);
    conn->data = connc->closure_handle;

    sigpipe_ignore(conn->data, &pipe_st);

    connclose(conn, "kill all");
    (void)Curl_disconnect(connc->closure_handle, conn, FALSE);
    sigpipe_restore(&pipe_st);

    conn = conncache_find_first_connection(connc);
  }

  if(connc->closure_handle) {
    SIGPIPE_VARIABLE(pipe_st);
    sigpipe_ignore(connc->closure_handle, &pipe_st);

    Curl_hostcache_clean(connc->closure_handle,
                         connc->closure_handle->dns.hostcache);
    Curl_close(&connc->closure_handle);
    sigpipe_restore(&pipe_st);
  }
}
