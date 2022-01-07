
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_socket_t ;


 int FALSE ;
 int SOCKET_READABLE (int ,int ) ;
 int TRUE ;

__attribute__((used)) static bool SocketIsDead(curl_socket_t sock)
{
  int sval;
  bool ret_val = TRUE;

  sval = SOCKET_READABLE(sock, 0);
  if(sval == 0)

    ret_val = FALSE;

  return ret_val;
}
