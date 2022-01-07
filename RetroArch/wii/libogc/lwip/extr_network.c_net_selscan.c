
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsocket {scalar_t__ sendevt; scalar_t__ rcvevt; scalar_t__ lastdata; } ;
typedef scalar_t__ s32 ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 struct netsocket* get_socket (scalar_t__) ;

__attribute__((used)) static s32 net_selscan(s32 maxfdp1,fd_set *readset,fd_set *writeset,fd_set *exceptset)
{
 s32 i,nready = 0;
 fd_set lreadset,lwriteset,lexceptset;
 struct netsocket *sock;

 FD_ZERO(&lreadset);
 FD_ZERO(&lwriteset);
 FD_ZERO(&lexceptset);

 for(i=0;i<maxfdp1;i++) {
  if(FD_ISSET(i,readset)) {
   sock = get_socket(i);
   if(sock && (sock->lastdata || sock->rcvevt)) {
    FD_SET(i,&lreadset);
    nready++;
   }
  }
  if(FD_ISSET(i,writeset)) {
   sock = get_socket(i);
   if(sock && sock->sendevt) {
    FD_SET(i,&lwriteset);
    nready++;
   }
  }
 }
 *readset = lreadset;
 *writeset = lwriteset;
 FD_ZERO(exceptset);

 return nready;
}
