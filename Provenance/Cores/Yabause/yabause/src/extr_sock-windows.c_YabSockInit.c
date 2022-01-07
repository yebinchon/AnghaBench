
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 scalar_t__ WSAStartup (int ,int *) ;

int YabSockInit()
{
   WSADATA wsaData;

   if (WSAStartup(MAKEWORD(2,2), &wsaData) != 0)
      return -1;

   return 0;
}
