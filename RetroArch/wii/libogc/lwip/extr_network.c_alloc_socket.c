
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netconn {int dummy; } ;
typedef size_t s32 ;
struct TYPE_2__ {int sendevt; scalar_t__ err; scalar_t__ flags; scalar_t__ rcvevt; scalar_t__ lastoffset; int * lastdata; struct netconn* conn; } ;


 int LWP_SemPost (int ) ;
 int LWP_SemWait (int ) ;
 size_t NUM_SOCKETS ;
 int netsocket_sem ;
 TYPE_1__* sockets ;

__attribute__((used)) static s32 alloc_socket(struct netconn *conn)
{
 s32 i;

 LWP_SemWait(netsocket_sem);

 for(i=0;i<NUM_SOCKETS;i++) {
  if(!sockets[i].conn) {
   sockets[i].conn = conn;
   sockets[i].lastdata = ((void*)0);
   sockets[i].lastoffset = 0;
   sockets[i].rcvevt = 0;
   sockets[i].sendevt = 1;
   sockets[i].flags = 0;
   sockets[i].err = 0;
   LWP_SemPost(netsocket_sem);
   return i;
  }
 }

 LWP_SemPost(netsocket_sem);
 return -1;
}
