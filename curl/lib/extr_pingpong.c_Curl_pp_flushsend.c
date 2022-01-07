
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pingpong {scalar_t__ sendthis; scalar_t__ sendsize; scalar_t__ sendleft; int response; struct connectdata* conn; } ;
struct connectdata {int * sock; } ;
typedef scalar_t__ ssize_t ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int Curl_now () ;
 scalar_t__ Curl_write (struct connectdata*,int ,scalar_t__,scalar_t__,scalar_t__*) ;
 size_t FIRSTSOCKET ;
 int free (scalar_t__) ;

CURLcode Curl_pp_flushsend(struct pingpong *pp)
{

  struct connectdata *conn = pp->conn;
  ssize_t written;
  curl_socket_t sock = conn->sock[FIRSTSOCKET];
  CURLcode result = Curl_write(conn, sock, pp->sendthis + pp->sendsize -
                               pp->sendleft, pp->sendleft, &written);
  if(result)
    return result;

  if(written != (ssize_t)pp->sendleft) {

    pp->sendleft -= written;
  }
  else {
    free(pp->sendthis);
    pp->sendthis = ((void*)0);
    pp->sendleft = pp->sendsize = 0;
    pp->response = Curl_now();
  }
  return CURLE_OK;
}
