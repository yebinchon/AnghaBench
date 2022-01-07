
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {char* name; } ;
struct TYPE_10__ {scalar_t__ conn_to_host; int tunnel_proxy; scalar_t__ httpproxy; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_7__ {TYPE_1__ host; } ;
struct connectdata {long remote_port; long port; TYPE_4__ host; TYPE_3__ conn_to_host; TYPE_5__ bits; TYPE_2__ http_proxy; } ;


 int msnprintf (char*,size_t,char*,long,char const*) ;

__attribute__((used)) static void hashkey(struct connectdata *conn, char *buf,
                    size_t len,
                    const char **hostp)
{
  const char *hostname;
  long port = conn->remote_port;

  if(conn->bits.httpproxy && !conn->bits.tunnel_proxy) {
    hostname = conn->http_proxy.host.name;
    port = conn->port;
  }
  else if(conn->bits.conn_to_host)
    hostname = conn->conn_to_host.name;
  else
    hostname = conn->host.name;

  if(hostp)

    *hostp = hostname;


  msnprintf(buf, len, "%ld%s", port, hostname);
}
