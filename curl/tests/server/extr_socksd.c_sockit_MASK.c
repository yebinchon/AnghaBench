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
typedef  unsigned char ssize_t ;
typedef  int /*<<< orphan*/  socksport ;
typedef  unsigned char send ;
typedef  scalar_t__ curl_socket_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {unsigned char version; unsigned char nmethods_min; unsigned char nmethods_max; unsigned char responseversion; unsigned char responsemethod; unsigned char reqcmd; unsigned short port; unsigned char connectrep; int /*<<< orphan*/  addr; int /*<<< orphan*/  password; int /*<<< orphan*/  user; } ;

/* Variables and functions */
 scalar_t__ CURL_SOCKET_BAD ; 
 int FALSE ; 
 size_t SOCKS5_ATYP ; 
 size_t SOCKS5_BNDADDR ; 
 size_t SOCKS5_DSTADDR ; 
 size_t SOCKS5_NMETHODS ; 
 size_t SOCKS5_REP ; 
 size_t SOCKS5_REQCMD ; 
 size_t SOCKS5_RESERVED ; 
 size_t SOCKS5_ULEN ; 
 size_t SOCKS5_UNAME ; 
 size_t SOCKS5_VERSION ; 
 int TRUE ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (unsigned char*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 unsigned char FUNC5 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,unsigned char*,unsigned char) ; 
 scalar_t__ FUNC8 (unsigned short,int /*<<< orphan*/ ) ; 
 unsigned char FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static curl_socket_t FUNC10(curl_socket_t fd)
{
  unsigned char buffer[256 + 16];
  unsigned char response[256 + 16];
  ssize_t rc;
  unsigned char len;
  unsigned char type;
  unsigned char rep = 0;
  unsigned char *address;
  unsigned short socksport;
  curl_socket_t connfd = CURL_SOCKET_BAD;
  unsigned short s5port;

  FUNC0();

  rc = FUNC5(fd, (char *)buffer, sizeof(buffer), 0);

  FUNC2("READ %d bytes", rc);
  FUNC1(buffer, rc);

  if(buffer[SOCKS5_VERSION] == 4)
    return FUNC7(fd, buffer, rc);

  if(buffer[SOCKS5_VERSION] != config.version) {
    FUNC2("VERSION byte not %d", config.version);
    return CURL_SOCKET_BAD;
  }
  if((buffer[SOCKS5_NMETHODS] < config.nmethods_min) ||
     (buffer[SOCKS5_NMETHODS] > config.nmethods_max)) {
    FUNC2("NMETHODS byte not within %d - %d ",
           config.nmethods_min, config.nmethods_max);
    return CURL_SOCKET_BAD;
  }
  /* after NMETHODS follows that many bytes listing the methods the client
     says it supports */
  if(rc != (buffer[SOCKS5_NMETHODS] + 2)) {
    FUNC2("Expected %d bytes, got %d", buffer[SOCKS5_NMETHODS] + 2, rc);
    return CURL_SOCKET_BAD;
  }
  FUNC2("Incoming request deemed fine!");

  /* respond with two bytes: VERSION + METHOD */
  response[0] = config.responseversion;
  response[1] = config.responsemethod;
  rc = (send)(fd, (char *)response, 2, 0);
  if(rc != 2) {
    FUNC2("Sending response failed!");
    return CURL_SOCKET_BAD;
  }
  FUNC2("Sent %d bytes", rc);
  FUNC1(response, rc);

  /* expect the request or auth */
  rc = FUNC5(fd, (char *)buffer, sizeof(buffer), 0);

  FUNC2("READ %d bytes", rc);
  FUNC1(buffer, rc);

  if(config.responsemethod == 2) {
    /* RFC 1929 authentication
       +----+------+----------+------+----------+
       |VER | ULEN |  UNAME   | PLEN |  PASSWD  |
       +----+------+----------+------+----------+
       | 1  |  1   | 1 to 255 |  1   | 1 to 255 |
       +----+------+----------+------+----------+
    */
    unsigned char ulen;
    unsigned char plen;
    bool login = TRUE;
    if(rc < 5) {
      FUNC2("Too short auth input: %d", rc);
      return CURL_SOCKET_BAD;
    }
    if(buffer[SOCKS5_VERSION] != 1) {
      FUNC2("Auth VERSION byte not 1, got %d", buffer[SOCKS5_VERSION]);
      return CURL_SOCKET_BAD;
    }
    ulen = buffer[SOCKS5_ULEN];
    if(rc < 4 + ulen) {
      FUNC2("Too short packet for username: %d", rc);
      return CURL_SOCKET_BAD;
    }
    plen = buffer[SOCKS5_ULEN + ulen + 1];
    if(rc < 3 + ulen + plen) {
      FUNC2("Too short packet for ulen %d plen %d: %d", ulen, plen, rc);
      return CURL_SOCKET_BAD;
    }
    if((ulen != FUNC9(config.user)) ||
       (plen != FUNC9(config.password)) ||
       FUNC3(&buffer[SOCKS5_UNAME], config.user, ulen) ||
       FUNC3(&buffer[SOCKS5_UNAME + ulen + 1], config.password, plen)) {
      /* no match! */
      FUNC2("mismatched credentials!");
      login = FALSE;
    }
    response[0] = 1;
    response[1] = login ? 0 : 1;
    rc = (send)(fd, (char *)response, 2, 0);
    if(rc != 2) {
      FUNC2("Sending auth response failed!");
      return CURL_SOCKET_BAD;
    }
    FUNC2("Sent %d bytes", rc);
    FUNC1(response, rc);
    if(!login)
      return CURL_SOCKET_BAD;

    /* expect the request */
    rc = FUNC5(fd, (char *)buffer, sizeof(buffer), 0);

    FUNC2("READ %d bytes", rc);
    FUNC1(buffer, rc);
  }
  if(rc < 6) {
    FUNC2("Too short for request: %d", rc);
    return CURL_SOCKET_BAD;
  }

  if(buffer[SOCKS5_VERSION] != config.version) {
    FUNC2("Request VERSION byte not %d", config.version);
    return CURL_SOCKET_BAD;
  }
  /* 1 == CONNECT */
  if(buffer[SOCKS5_REQCMD] != config.reqcmd) {
    FUNC2("Request COMMAND byte not %d", config.reqcmd);
    return CURL_SOCKET_BAD;
  }
  /* reserved, should be zero */
  if(buffer[SOCKS5_RESERVED] != 0) {
    FUNC2("Request COMMAND byte not %d", config.reqcmd);
    return CURL_SOCKET_BAD;
  }
  /* ATYP:
     o  IP V4 address: X'01'
     o  DOMAINNAME: X'03'
     o  IP V6 address: X'04'
  */
  type = buffer[SOCKS5_ATYP];
  address = &buffer[SOCKS5_DSTADDR];
  switch(type) {
  case 1:
    /* 4 bytes IPv4 address */
    len = 4;
    break;
  case 3:
    /* The first octet of the address field contains the number of octets of
       name that follow */
    len = buffer[SOCKS5_DSTADDR];
    len++;
    break;
  case 4:
    /* 16 bytes IPv6 address */
    len = 16;
    break;
  default:
    FUNC2("Unknown ATYP %d", type);
    return CURL_SOCKET_BAD;
  }
  if(rc < (4 + len + 2)) {
    FUNC2("Request too short: %d, expected %d", rc, 4 + len + 2);
    return CURL_SOCKET_BAD;
  }

  if(!config.port) {
    unsigned char *portp = &buffer[SOCKS5_DSTADDR + len];
    s5port = (unsigned short)((portp[0]<<8) | (portp[1]));
  }
  else
    s5port = config.port;

  if(!config.connectrep)
    connfd = FUNC8(s5port, config.addr);

  if(connfd == CURL_SOCKET_BAD) {
    /* failed */
    rep = 1;
  }
  else {
    rep = config.connectrep;
  }

  /* */
  response[SOCKS5_VERSION] = config.responseversion;

  /*
    o  REP    Reply field:
    o  X'00' succeeded
    o  X'01' general SOCKS server failure
    o  X'02' connection not allowed by ruleset
    o  X'03' Network unreachable
    o  X'04' Host unreachable
    o  X'05' Connection refused
    o  X'06' TTL expired
    o  X'07' Command not supported
    o  X'08' Address type not supported
    o  X'09' to X'FF' unassigned
  */
  response[SOCKS5_REP] = rep;
  response[SOCKS5_RESERVED] = 0; /* must be zero */
  response[SOCKS5_ATYP] = type; /* address type */

  /* mirror back the original addr + port */

  /* address or hostname */
  FUNC4(&response[SOCKS5_BNDADDR], address, len);

  /* port number */
  FUNC4(&response[SOCKS5_BNDADDR + len],
         &buffer[SOCKS5_DSTADDR + len], sizeof(socksport));

  rc = (send)(fd, (char *)response, len + 6, 0);
  if(rc != (len + 6)) {
    FUNC2("Sending connect response failed!");
    return CURL_SOCKET_BAD;
  }
  FUNC2("Sent %d bytes", rc);
  FUNC1(response, rc);

  if(!rep)
    return connfd;

  if(connfd != CURL_SOCKET_BAD)
    FUNC6(connfd);

  return CURL_SOCKET_BAD;
}