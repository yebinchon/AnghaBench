
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dns; } ;
struct connectdata {int data; TYPE_1__ async; int * dns_entry; } ;
typedef scalar_t__ CURLcode ;


 int Curl_disconnect (int ,struct connectdata*,int ) ;
 scalar_t__ Curl_setup_conn (struct connectdata*,int*) ;
 int TRUE ;

CURLcode Curl_once_resolved(struct connectdata *conn,
                            bool *protocol_done)
{
  CURLcode result;

  if(conn->async.dns) {
    conn->dns_entry = conn->async.dns;
    conn->async.dns = ((void*)0);
  }

  result = Curl_setup_conn(conn, protocol_done);

  if(result)


    Curl_disconnect(conn->data, conn, TRUE);

  return result;
}
