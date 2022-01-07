
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsocket {int conn; } ;
typedef size_t s32 ;


 int LWIP_DEBUGF (int ,char*) ;
 size_t NUM_SOCKETS ;
 int SOCKETS_DEBUG ;
 struct netsocket* sockets ;

__attribute__((used)) static struct netsocket* get_socket(s32 s)
{
 struct netsocket *sock;
 if(s<0 || s>NUM_SOCKETS) {
     LWIP_DEBUGF(SOCKETS_DEBUG, ("get_socket(%d): invalid\n", s));
  return ((void*)0);
 }
 sock = &sockets[s];
 if(!sock->conn) {
     LWIP_DEBUGF(SOCKETS_DEBUG, ("get_socket(%d): no active\n", s));
  return ((void*)0);
 }

 return sock;
}
