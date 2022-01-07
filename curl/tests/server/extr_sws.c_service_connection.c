
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httprequest {int testno; int partno; scalar_t__ open; scalar_t__ upgrade_request; int connect_port; scalar_t__ connect_request; int done_processing; } ;
typedef int curl_socket_t ;


 scalar_t__ FALSE ;
 int get_request (int ,struct httprequest*) ;
 scalar_t__ got_exit_signal ;
 int http2 (struct httprequest*) ;
 int http_connect (int *,int ,char const*,int ) ;
 int is_proxy ;
 int logmsg (char*,...) ;
 scalar_t__ prevbounce ;
 int prevpartno ;
 int prevtestno ;
 int send_doc (int ,struct httprequest*) ;

__attribute__((used)) static int service_connection(curl_socket_t msgsock, struct httprequest *req,
                              curl_socket_t listensock,
                              const char *connecthost)
{
  if(got_exit_signal)
    return -1;

  while(!req->done_processing) {
    int rc = get_request(msgsock, req);
    if(rc <= 0) {

      return rc;
    }
  }

  if(prevbounce) {

    if((req->testno == prevtestno) &&
       (req->partno == prevpartno)) {
      req->partno++;
      logmsg("BOUNCE part number to %ld", req->partno);
    }
    else {
      prevbounce = FALSE;
      prevtestno = -1;
      prevpartno = -1;
    }
  }

  send_doc(msgsock, req);
  if(got_exit_signal)
    return -1;

  if(req->testno < 0) {
    logmsg("special request received, no persistency");
    return -1;
  }
  if(!req->open) {
    logmsg("instructed to close connection after server-reply");
    return -1;
  }

  if(req->connect_request) {

    if(!is_proxy) {
      logmsg("received CONNECT but isn't running as proxy!");
      return 1;
    }
    else {
      http_connect(&msgsock, listensock, connecthost, req->connect_port);
      return -1;
    }
  }

  if(req->upgrade_request) {

    http2(req);
    return -1;
  }



  if(req->open) {
    logmsg("=> persistent connection request ended, awaits new request\n");
    return 1;
  }

  return -1;
}
