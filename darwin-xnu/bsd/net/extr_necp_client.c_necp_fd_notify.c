
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinfo {int si_note; } ;
struct necp_fd_data {struct selinfo si; } ;


 int KNOTE (int *,int) ;
 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 int selwakeup (struct selinfo*) ;

__attribute__((used)) static void
necp_fd_notify(struct necp_fd_data *fd_data, bool locked)
{
 struct selinfo *si = &fd_data->si;

 if (!locked) {
  NECP_FD_LOCK(fd_data);
 }

 selwakeup(si);



 KNOTE(&si->si_note, 1);

 if (!locked) {
  NECP_FD_UNLOCK(fd_data);
 }
}
