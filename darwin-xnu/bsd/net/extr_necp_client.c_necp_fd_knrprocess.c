
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_fd_data {int dummy; } ;
struct kevent_internal_s {int dummy; } ;
struct knote {struct kevent_internal_s kn_kevent; scalar_t__ kn_hook; } ;
struct filt_process_s {int dummy; } ;


 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 int POLLIN ;
 int current_proc () ;
 int necp_fd_poll (struct necp_fd_data*,int,int *,int ,int) ;

__attribute__((used)) static int
necp_fd_knrprocess(struct knote *kn, struct filt_process_s *data, struct kevent_internal_s *kev)
{
#pragma unused(data)
 struct necp_fd_data *fd_data;
 int revents;
 int res;

 fd_data = (struct necp_fd_data *)kn->kn_hook;

 NECP_FD_LOCK(fd_data);
 revents = necp_fd_poll(fd_data, POLLIN, ((void*)0), current_proc(), 1);
 res = ((revents & POLLIN) != 0);
 if (res) {
  *kev = kn->kn_kevent;
 }
 NECP_FD_UNLOCK(fd_data);
 return (res);
}
