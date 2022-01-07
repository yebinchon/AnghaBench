
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct timeval {int tv_sec; } ;
typedef int off_t ;


 int FWRITE ;
 int NULLVP ;
 int O_CREAT ;
 int O_NOFOLLOW ;
 char* PROC_SHUTDOWN_LOG ;
 int microtime (struct timeval*) ;
 int printf (char*,char*,int) ;
 int sd_log (int ,char*,int ) ;
 int sd_logvp ;
 int vnode_open (char*,int,int,int ,int *,int ) ;
 int vnode_setsize (int ,int ,int ,int ) ;

__attribute__((used)) static int
sd_openlog(vfs_context_t ctx)
{
 int error = 0;
 struct timeval tv;


 if ((error = vnode_open(PROC_SHUTDOWN_LOG, (O_CREAT | FWRITE | O_NOFOLLOW), 0644, 0, &sd_logvp, ctx))) {
  printf("Failed to open %s: error %d\n", PROC_SHUTDOWN_LOG, error);
  sd_logvp = NULLVP;
  return error;
 }

 vnode_setsize(sd_logvp, (off_t)0, 0, ctx);


 microtime(&tv);
 sd_log(ctx, "Process shutdown log.  Current time is %lu (in seconds).\n\n", tv.tv_sec);

 return 0;
}
