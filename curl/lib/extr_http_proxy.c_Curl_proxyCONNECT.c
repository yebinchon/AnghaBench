
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int connect_state; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CONNECT (struct connectdata*,int,char const*,int) ;
 scalar_t__ Curl_connect_complete (struct connectdata*) ;
 int FALSE ;
 int connect_done (struct connectdata*) ;
 scalar_t__ connect_init (struct connectdata*,int ) ;

CURLcode Curl_proxyCONNECT(struct connectdata *conn,
                           int sockindex,
                           const char *hostname,
                           int remote_port)
{
  CURLcode result;
  if(!conn->connect_state) {
    result = connect_init(conn, FALSE);
    if(result)
      return result;
  }
  result = CONNECT(conn, sockindex, hostname, remote_port);

  if(result || Curl_connect_complete(conn))
    connect_done(conn);

  return result;
}
