
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
typedef int send ;
typedef scalar_t__ curl_socket_t ;
struct TYPE_2__ {unsigned short port; int addr; } ;


 scalar_t__ CURL_SOCKET_BAD ;
 size_t SOCKS4_CD ;
 size_t SOCKS4_DSTPORT ;
 TYPE_1__ config ;
 int loghex (unsigned char*,int) ;
 int logmsg (char*,...) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int sclose (scalar_t__) ;
 scalar_t__ socksconnect (unsigned short,int ) ;

__attribute__((used)) static curl_socket_t socks4(curl_socket_t fd,
                            unsigned char *buffer,
                            ssize_t rc)
{
  unsigned char response[256 + 16];
  curl_socket_t connfd;
  unsigned char cd;
  unsigned short s4port;

  if(buffer[SOCKS4_CD] != 1) {
    logmsg("SOCKS4 CD is not 1: %d", buffer[SOCKS4_CD]);
    return CURL_SOCKET_BAD;
  }
  if(rc < 9) {
    logmsg("SOCKS4 connect message too short: %d", rc);
    return CURL_SOCKET_BAD;
  }
  if(!config.port)
    s4port = (unsigned short)((buffer[SOCKS4_DSTPORT]<<8) |
                              (buffer[SOCKS4_DSTPORT + 1]));
  else
    s4port = config.port;

  connfd = socksconnect(s4port, config.addr);
  if(connfd == CURL_SOCKET_BAD) {

    cd = 91;
  }
  else {

    cd = 90;
  }
  response[0] = 0;
  response[1] = cd;

  memcpy(&response[2], &buffer[SOCKS4_DSTPORT], 6);
  rc = (send)(fd, (char *)response, 8, 0);
  if(rc != 8) {
    logmsg("Sending SOCKS4 response failed!");
    return CURL_SOCKET_BAD;
  }
  logmsg("Sent %d bytes", rc);
  loghex(response, rc);

  if(cd == 90)

    return connfd;

  if(connfd != CURL_SOCKET_BAD)
    sclose(connfd);

  return CURL_SOCKET_BAD;
}
