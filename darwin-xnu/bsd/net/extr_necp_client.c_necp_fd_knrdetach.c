
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinfo {int si_note; } ;
struct necp_fd_data {struct selinfo si; } ;
struct knote {scalar_t__ kn_hook; } ;


 int KNOTE_DETACH (int *,struct knote*) ;
 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;

__attribute__((used)) static void
necp_fd_knrdetach(struct knote *kn)
{
 struct necp_fd_data *fd_data = (struct necp_fd_data *)kn->kn_hook;
 struct selinfo *si = &fd_data->si;

 NECP_FD_LOCK(fd_data);
 KNOTE_DETACH(&si->si_note, kn);
 NECP_FD_UNLOCK(fd_data);
}
