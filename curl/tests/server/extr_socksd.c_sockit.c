
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char ssize_t ;
typedef int socksport ;
typedef unsigned char send ;
typedef scalar_t__ curl_socket_t ;
typedef int buffer ;
struct TYPE_2__ {unsigned char version; unsigned char nmethods_min; unsigned char nmethods_max; unsigned char responseversion; unsigned char responsemethod; unsigned char reqcmd; unsigned short port; unsigned char connectrep; int addr; int password; int user; } ;


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
 int getconfig () ;
 int loghex (unsigned char*,unsigned char) ;
 int logmsg (char*,...) ;
 scalar_t__ memcmp (unsigned char*,int ,unsigned char) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char recv (scalar_t__,char*,int,int ) ;
 int sclose (scalar_t__) ;
 scalar_t__ socks4 (scalar_t__,unsigned char*,unsigned char) ;
 scalar_t__ socksconnect (unsigned short,int ) ;
 unsigned char strlen (int ) ;

__attribute__((used)) static curl_socket_t sockit(curl_socket_t fd)
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

  getconfig();

  rc = recv(fd, (char *)buffer, sizeof(buffer), 0);

  logmsg("READ %d bytes", rc);
  loghex(buffer, rc);

  if(buffer[SOCKS5_VERSION] == 4)
    return socks4(fd, buffer, rc);

  if(buffer[SOCKS5_VERSION] != config.version) {
    logmsg("VERSION byte not %d", config.version);
    return CURL_SOCKET_BAD;
  }
  if((buffer[SOCKS5_NMETHODS] < config.nmethods_min) ||
     (buffer[SOCKS5_NMETHODS] > config.nmethods_max)) {
    logmsg("NMETHODS byte not within %d - %d ",
           config.nmethods_min, config.nmethods_max);
    return CURL_SOCKET_BAD;
  }


  if(rc != (buffer[SOCKS5_NMETHODS] + 2)) {
    logmsg("Expected %d bytes, got %d", buffer[SOCKS5_NMETHODS] + 2, rc);
    return CURL_SOCKET_BAD;
  }
  logmsg("Incoming request deemed fine!");


  response[0] = config.responseversion;
  response[1] = config.responsemethod;
  rc = (send)(fd, (char *)response, 2, 0);
  if(rc != 2) {
    logmsg("Sending response failed!");
    return CURL_SOCKET_BAD;
  }
  logmsg("Sent %d bytes", rc);
  loghex(response, rc);


  rc = recv(fd, (char *)buffer, sizeof(buffer), 0);

  logmsg("READ %d bytes", rc);
  loghex(buffer, rc);

  if(config.responsemethod == 2) {







    unsigned char ulen;
    unsigned char plen;
    bool login = TRUE;
    if(rc < 5) {
      logmsg("Too short auth input: %d", rc);
      return CURL_SOCKET_BAD;
    }
    if(buffer[SOCKS5_VERSION] != 1) {
      logmsg("Auth VERSION byte not 1, got %d", buffer[SOCKS5_VERSION]);
      return CURL_SOCKET_BAD;
    }
    ulen = buffer[SOCKS5_ULEN];
    if(rc < 4 + ulen) {
      logmsg("Too short packet for username: %d", rc);
      return CURL_SOCKET_BAD;
    }
    plen = buffer[SOCKS5_ULEN + ulen + 1];
    if(rc < 3 + ulen + plen) {
      logmsg("Too short packet for ulen %d plen %d: %d", ulen, plen, rc);
      return CURL_SOCKET_BAD;
    }
    if((ulen != strlen(config.user)) ||
       (plen != strlen(config.password)) ||
       memcmp(&buffer[SOCKS5_UNAME], config.user, ulen) ||
       memcmp(&buffer[SOCKS5_UNAME + ulen + 1], config.password, plen)) {

      logmsg("mismatched credentials!");
      login = FALSE;
    }
    response[0] = 1;
    response[1] = login ? 0 : 1;
    rc = (send)(fd, (char *)response, 2, 0);
    if(rc != 2) {
      logmsg("Sending auth response failed!");
      return CURL_SOCKET_BAD;
    }
    logmsg("Sent %d bytes", rc);
    loghex(response, rc);
    if(!login)
      return CURL_SOCKET_BAD;


    rc = recv(fd, (char *)buffer, sizeof(buffer), 0);

    logmsg("READ %d bytes", rc);
    loghex(buffer, rc);
  }
  if(rc < 6) {
    logmsg("Too short for request: %d", rc);
    return CURL_SOCKET_BAD;
  }

  if(buffer[SOCKS5_VERSION] != config.version) {
    logmsg("Request VERSION byte not %d", config.version);
    return CURL_SOCKET_BAD;
  }

  if(buffer[SOCKS5_REQCMD] != config.reqcmd) {
    logmsg("Request COMMAND byte not %d", config.reqcmd);
    return CURL_SOCKET_BAD;
  }

  if(buffer[SOCKS5_RESERVED] != 0) {
    logmsg("Request COMMAND byte not %d", config.reqcmd);
    return CURL_SOCKET_BAD;
  }





  type = buffer[SOCKS5_ATYP];
  address = &buffer[SOCKS5_DSTADDR];
  switch(type) {
  case 1:

    len = 4;
    break;
  case 3:


    len = buffer[SOCKS5_DSTADDR];
    len++;
    break;
  case 4:

    len = 16;
    break;
  default:
    logmsg("Unknown ATYP %d", type);
    return CURL_SOCKET_BAD;
  }
  if(rc < (4 + len + 2)) {
    logmsg("Request too short: %d, expected %d", rc, 4 + len + 2);
    return CURL_SOCKET_BAD;
  }

  if(!config.port) {
    unsigned char *portp = &buffer[SOCKS5_DSTADDR + len];
    s5port = (unsigned short)((portp[0]<<8) | (portp[1]));
  }
  else
    s5port = config.port;

  if(!config.connectrep)
    connfd = socksconnect(s5port, config.addr);

  if(connfd == CURL_SOCKET_BAD) {

    rep = 1;
  }
  else {
    rep = config.connectrep;
  }


  response[SOCKS5_VERSION] = config.responseversion;
  response[SOCKS5_REP] = rep;
  response[SOCKS5_RESERVED] = 0;
  response[SOCKS5_ATYP] = type;




  memcpy(&response[SOCKS5_BNDADDR], address, len);


  memcpy(&response[SOCKS5_BNDADDR + len],
         &buffer[SOCKS5_DSTADDR + len], sizeof(socksport));

  rc = (send)(fd, (char *)response, len + 6, 0);
  if(rc != (len + 6)) {
    logmsg("Sending connect response failed!");
    return CURL_SOCKET_BAD;
  }
  logmsg("Sent %d bytes", rc);
  loghex(response, rc);

  if(!rep)
    return connfd;

  if(connfd != CURL_SOCKET_BAD)
    sclose(connfd);

  return CURL_SOCKET_BAD;
}
