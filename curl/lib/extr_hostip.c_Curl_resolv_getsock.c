
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
typedef int curl_socket_t ;
struct TYPE_3__ {scalar_t__ doh; } ;
struct TYPE_4__ {TYPE_1__ set; } ;


 int Curl_resolver_getsock (struct connectdata*,int *) ;
 int GETSOCK_BLANK ;

int Curl_resolv_getsock(struct connectdata *conn,
                        curl_socket_t *socks)
{







  (void)conn;
  (void)socks;
  return GETSOCK_BLANK;

}
