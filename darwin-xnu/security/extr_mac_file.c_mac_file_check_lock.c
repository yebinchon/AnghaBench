
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct flock {int dummy; } ;
struct fileglob {int fg_label; } ;


 int MAC_CHECK (int ,struct ucred*,struct fileglob*,int ,int,struct flock*) ;
 int file_check_lock ;

int
mac_file_check_lock(struct ucred *cred, struct fileglob *fg, int op,
    struct flock *fl)
{
 int error;

 MAC_CHECK(file_check_lock, cred, fg, fg->fg_label, op, fl);
 return (error);
}
