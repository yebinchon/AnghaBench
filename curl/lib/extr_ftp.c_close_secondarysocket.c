
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tcpconnect; } ;
struct connectdata {scalar_t__* sock; TYPE_1__ bits; } ;


 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_closesocket (struct connectdata*,scalar_t__) ;
 int FALSE ;
 size_t SECONDARYSOCKET ;

__attribute__((used)) static void close_secondarysocket(struct connectdata *conn)
{
  if(CURL_SOCKET_BAD != conn->sock[SECONDARYSOCKET]) {
    Curl_closesocket(conn, conn->sock[SECONDARYSOCKET]);
    conn->sock[SECONDARYSOCKET] = CURL_SOCKET_BAD;
  }
  conn->bits.tcpconnect[SECONDARYSOCKET] = FALSE;
}
