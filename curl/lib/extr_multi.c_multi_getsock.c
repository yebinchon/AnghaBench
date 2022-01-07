
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct Curl_easy {int mstate; TYPE_1__* conn; } ;
typedef int curl_socket_t ;
struct TYPE_8__ {struct Curl_easy* data; } ;
 int Curl_resolv_getsock (TYPE_1__*,int *) ;
 int Curl_single_getsock (TYPE_1__*,int *) ;
 int doing_getsock (TYPE_1__*,int *) ;
 int domore_getsock (TYPE_1__*,int *) ;
 int protocol_getsock (TYPE_1__*,int *) ;
 int waitconnect_getsock (TYPE_1__*,int *) ;
 int waitproxyconnect_getsock (TYPE_1__*,int *) ;

__attribute__((used)) static int multi_getsock(struct Curl_easy *data,
                         curl_socket_t *socks)
{



  if(!data->conn)
    return 0;

  if(data->mstate > 144 &&
     data->mstate < 145) {

    data->conn->data = data;
  }

  switch(data->mstate) {
  default:
    return 0;

  case 128:
    return Curl_resolv_getsock(data->conn, socks);

  case 134:
  case 133:
    return protocol_getsock(data->conn, socks);

  case 143:
  case 142:
    return doing_getsock(data->conn, socks);

  case 129:
    return waitproxyconnect_getsock(data->conn, socks);

  case 131:
    return waitconnect_getsock(data->conn, socks);

  case 139:
    return domore_getsock(data->conn, socks);

  case 140:


  case 135:
    return Curl_single_getsock(data->conn, socks);
  }

}
