
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char transfertype; } ;
struct TYPE_5__ {TYPE_1__ ftpc; } ;
struct connectdata {TYPE_2__ proto; TYPE_3__* handler; struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
struct TYPE_6__ {int protocol; } ;
typedef scalar_t__ CURLcode ;


 int CLIENTWRITE_BODY ;
 scalar_t__ Curl_convert_from_network (struct Curl_easy*,char*,size_t) ;
 int DEBUGASSERT (int) ;
 int PROTO_FAMILY_FTP ;
 scalar_t__ chop_write (struct connectdata*,int,char*,size_t) ;
 size_t convert_lineends (struct Curl_easy*,char*,size_t) ;
 size_t strlen (char*) ;

CURLcode Curl_client_write(struct connectdata *conn,
                           int type,
                           char *ptr,
                           size_t len)
{
  struct Curl_easy *data = conn->data;

  if(0 == len)
    len = strlen(ptr);

  DEBUGASSERT(type <= 3);


  if((type & CLIENTWRITE_BODY) &&
    (conn->handler->protocol & PROTO_FAMILY_FTP) &&
    conn->proto.ftpc.transfertype == 'A') {

    CURLcode result = Curl_convert_from_network(data, ptr, len);

    if(result)
      return result;





    }

  return chop_write(conn, type, ptr, len);
}
