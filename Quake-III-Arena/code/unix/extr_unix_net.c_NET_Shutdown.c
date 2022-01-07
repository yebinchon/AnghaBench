
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 scalar_t__ ip_socket ;

void NET_Shutdown (void)
{
 if (ip_socket) {
  close(ip_socket);
  ip_socket = 0;
 }
}
