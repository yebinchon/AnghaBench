
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pp; } ;
struct TYPE_4__ {TYPE_1__ smtpc; } ;
struct connectdata {TYPE_2__ proto; } ;
typedef int curl_socket_t ;


 int Curl_pp_getsock (int *,int *) ;

__attribute__((used)) static int smtp_getsock(struct connectdata *conn, curl_socket_t *socks)
{
  return Curl_pp_getsock(&conn->proto.smtpc.pp, socks);
}
