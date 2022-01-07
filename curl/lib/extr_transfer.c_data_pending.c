
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int httpversion; TYPE_1__* handler; } ;
struct TYPE_2__ {int protocol; } ;


 int CURLPROTO_SCP ;
 int CURLPROTO_SFTP ;
 scalar_t__ Curl_ssl_data_pending (struct connectdata const*,int ) ;
 int FIRSTSOCKET ;
 int PROTO_FAMILY_HTTP ;

__attribute__((used)) static int data_pending(const struct connectdata *conn)
{


  return conn->handler->protocol&(CURLPROTO_SCP|CURLPROTO_SFTP) ||
    Curl_ssl_data_pending(conn, FIRSTSOCKET);

}
