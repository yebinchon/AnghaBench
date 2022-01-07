
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;
typedef int gint64 ;


 int RLIMIT_NOFILE ;
 int _getmaxstdio () ;
 int getrlimit (int ,struct rlimit*) ;

gint64 chassis_fdlimit_get() {



 struct rlimit max_files_rlimit;

 if (-1 == getrlimit(RLIMIT_NOFILE, &max_files_rlimit)) {
  return -1;
 } else {
  return max_files_rlimit.rlim_cur;
 }


}
