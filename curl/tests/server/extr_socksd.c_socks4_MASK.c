#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int send ;
typedef  scalar_t__ curl_socket_t ;
struct TYPE_2__ {unsigned short port; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ CURL_SOCKET_BAD ; 
 size_t SOCKS4_CD ; 
 size_t SOCKS4_DSTPORT ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static curl_socket_t FUNC5(curl_socket_t fd,
                            unsigned char *buffer,
                            ssize_t rc)
{
  unsigned char response[256 + 16];
  curl_socket_t connfd;
  unsigned char cd;
  unsigned short s4port;

  if(buffer[SOCKS4_CD] != 1) {
    FUNC1("SOCKS4 CD is not 1: %d", buffer[SOCKS4_CD]);
    return CURL_SOCKET_BAD;
  }
  if(rc < 9) {
    FUNC1("SOCKS4 connect message too short: %d", rc);
    return CURL_SOCKET_BAD;
  }
  if(!config.port)
    s4port = (unsigned short)((buffer[SOCKS4_DSTPORT]<<8) |
                              (buffer[SOCKS4_DSTPORT + 1]));
  else
    s4port = config.port;

  connfd = FUNC4(s4port, config.addr);
  if(connfd == CURL_SOCKET_BAD) {
    /* failed */
    cd = 91;
  }
  else {
    /* success */
    cd = 90;
  }
  response[0] = 0; /* reply version 0 */
  response[1] = cd; /* result */
  /* copy port and address from connect request */
  FUNC2(&response[2], &buffer[SOCKS4_DSTPORT], 6);
  rc = (send)(fd, (char *)response, 8, 0);
  if(rc != 8) {
    FUNC1("Sending SOCKS4 response failed!");
    return CURL_SOCKET_BAD;
  }
  FUNC1("Sent %d bytes", rc);
  FUNC0(response, rc);

  if(cd == 90)
    /* now do the transfer */
    return connfd;

  if(connfd != CURL_SOCKET_BAD)
    FUNC3(connfd);

  return CURL_SOCKET_BAD;
}