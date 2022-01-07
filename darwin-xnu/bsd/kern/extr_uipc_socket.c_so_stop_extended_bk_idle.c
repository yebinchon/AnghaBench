
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_flags; scalar_t__ so_extended_bk_start; int so_flags1; } ;
struct TYPE_2__ {scalar_t__ so_xbkidle_active; } ;


 int FALSE ;
 int OSDecrementAtomic (scalar_t__*) ;
 int SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL ;
 int SOF1_EXTEND_BK_IDLE_INPROG ;
 int SOF_DEFUNCT ;
 int VERIFY (int) ;
 int current_proc () ;
 int sodefunct (int ,struct socket*,int ) ;
 TYPE_1__ soextbkidlestat ;
 int sosetdefunct (int ,struct socket*,int ,int ) ;

__attribute__((used)) static void
so_stop_extended_bk_idle(struct socket *so)
{
 so->so_flags1 &= ~SOF1_EXTEND_BK_IDLE_INPROG;
 so->so_extended_bk_start = 0;

 OSDecrementAtomic(&soextbkidlestat.so_xbkidle_active);
 VERIFY(soextbkidlestat.so_xbkidle_active >= 0);



 sosetdefunct(current_proc(), so,
     SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL, FALSE);
 if (so->so_flags & SOF_DEFUNCT) {
  sodefunct(current_proc(), so,
      SHUTDOWN_SOCKET_LEVEL_DISCONNECT_INTERNAL);
 }
}
