#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ipv6; } ;
struct connectdata {TYPE_3__* data; TYPE_1__ bits; } ;
typedef  int /*<<< orphan*/  proxy_header ;
struct TYPE_5__ {int /*<<< orphan*/  request_size; int /*<<< orphan*/  conn_primary_port; int /*<<< orphan*/  conn_local_port; int /*<<< orphan*/  conn_primary_ip; int /*<<< orphan*/  conn_local_ip; } ;
struct TYPE_6__ {TYPE_2__ info; } ;
typedef  int /*<<< orphan*/  Curl_send_buffer ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,struct connectdata*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FIRSTSOCKET ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static CURLcode FUNC5(struct connectdata *conn)
{
  char proxy_header[128];
  Curl_send_buffer *req_buffer;
  CURLcode result;
  char tcp_version[5];

  /* Emit the correct prefix for IPv6 */
  if(conn->bits.ipv6) {
    FUNC4(tcp_version, "TCP6");
  }
  else {
    FUNC4(tcp_version, "TCP4");
  }

  FUNC3(proxy_header,
            sizeof(proxy_header),
            "PROXY %s %s %s %li %li\r\n",
            tcp_version,
            conn->data->info.conn_local_ip,
            conn->data->info.conn_primary_ip,
            conn->data->info.conn_local_port,
            conn->data->info.conn_primary_port);

  req_buffer = FUNC0();
  if(!req_buffer)
    return CURLE_OUT_OF_MEMORY;

  result = FUNC2(&req_buffer, proxy_header);
  if(result)
    return result;

  result = FUNC1(&req_buffer,
                                conn,
                                &conn->data->info.request_size,
                                0,
                                FIRSTSOCKET);

  return result;
}