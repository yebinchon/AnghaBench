
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ipv6; } ;
struct connectdata {TYPE_3__* data; TYPE_1__ bits; } ;
typedef int proxy_header ;
struct TYPE_5__ {int request_size; int conn_primary_port; int conn_local_port; int conn_primary_ip; int conn_local_ip; } ;
struct TYPE_6__ {TYPE_2__ info; } ;
typedef int Curl_send_buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int * Curl_add_buffer_init () ;
 scalar_t__ Curl_add_buffer_send (int **,struct connectdata*,int *,int ,int ) ;
 scalar_t__ Curl_add_bufferf (int **,char*) ;
 int FIRSTSOCKET ;
 int msnprintf (char*,int,char*,char*,int ,int ,int ,int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static CURLcode add_haproxy_protocol_header(struct connectdata *conn)
{
  char proxy_header[128];
  Curl_send_buffer *req_buffer;
  CURLcode result;
  char tcp_version[5];


  if(conn->bits.ipv6) {
    strcpy(tcp_version, "TCP6");
  }
  else {
    strcpy(tcp_version, "TCP4");
  }

  msnprintf(proxy_header,
            sizeof(proxy_header),
            "PROXY %s %s %s %li %li\r\n",
            tcp_version,
            conn->data->info.conn_local_ip,
            conn->data->info.conn_primary_ip,
            conn->data->info.conn_local_port,
            conn->data->info.conn_primary_port);

  req_buffer = Curl_add_buffer_init();
  if(!req_buffer)
    return CURLE_OUT_OF_MEMORY;

  result = Curl_add_bufferf(&req_buffer, proxy_header);
  if(result)
    return result;

  result = Curl_add_buffer_send(&req_buffer,
                                conn,
                                &conn->data->info.request_size,
                                0,
                                FIRSTSOCKET);

  return result;
}
