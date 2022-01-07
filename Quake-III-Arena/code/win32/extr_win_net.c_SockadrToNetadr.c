
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_ipx {int sa_socket; int sa_nodenum; int sa_netnum; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int port; int * ipx; int type; int ip; } ;
typedef TYPE_2__ netadr_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_IPX ;
 int NA_IP ;
 int NA_IPX ;
 int memcpy (int *,int ,int) ;

void SockadrToNetadr( struct sockaddr *s, netadr_t *a ) {
 if (s->sa_family == AF_INET) {
  a->type = NA_IP;
  *(int *)&a->ip = ((struct sockaddr_in *)s)->sin_addr.s_addr;
  a->port = ((struct sockaddr_in *)s)->sin_port;
 }
 else if( s->sa_family == AF_IPX ) {
  a->type = NA_IPX;
  memcpy( &a->ipx[0], ((struct sockaddr_ipx *)s)->sa_netnum, 4 );
  memcpy( &a->ipx[4], ((struct sockaddr_ipx *)s)->sa_nodenum, 6 );
  a->port = ((struct sockaddr_ipx *)s)->sa_socket;
 }
}
