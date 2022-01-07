
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsd_exec_setup (int) ;
 int desiredvnodes ;
 int hard_maxproc ;
 int max_cached_sock_count ;
 int maxfiles ;
 int maxfilesperproc ;
 int maxproc ;
 int maxprocperuid ;
 scalar_t__ serverperfmode ;
 int somaxconn ;
 int tcp_tcbhashsize ;
 int tcp_tfo_backlog ;
 int vnodes_sized ;

void
bsd_scale_setup(int scale)
{

 if ((scale > 0) && (serverperfmode == 0)) {
  maxproc *= scale;
  maxprocperuid = (maxproc * 2) / 3;
  if (scale > 2) {
   maxfiles *= scale;
   maxfilesperproc = maxfiles/2;
  }
 }

 if ((scale > 0) && (serverperfmode !=0)) {
  maxproc = 2500 * scale;
  hard_maxproc = maxproc;

  maxprocperuid = (maxproc*3)/4;
  maxfiles = (150000 * scale);
  maxfilesperproc = maxfiles/2;
  desiredvnodes = maxfiles;
  vnodes_sized = 1;
  tcp_tfo_backlog = 100 * scale;
  if (scale > 4) {

   somaxconn = 2048;




   tcp_tcbhashsize = 32 *1024;

   if (scale > 7) {

    max_cached_sock_count = 165000;
   } else {
    max_cached_sock_count = 60000 + ((scale-1) * 15000);
   }
  } else {
   somaxconn = 512*scale;
   tcp_tcbhashsize = 4*1024*scale;
   max_cached_sock_count = 60000 + ((scale-1) * 15000);
  }
 }

 if(maxproc > hard_maxproc) {
  hard_maxproc = maxproc;
 }

 bsd_exec_setup(scale);
}
