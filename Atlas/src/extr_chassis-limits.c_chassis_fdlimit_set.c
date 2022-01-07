
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; int rlim_max; } ;
typedef int rlim_t ;
typedef int gint64 ;


 int G_STRLOC ;
 int RLIMIT_NOFILE ;
 int _setmaxstdio (int) ;
 int errno ;
 int g_critical (char*,int ,int ,int ) ;
 int g_strerror (int ) ;
 int getrlimit (int ,struct rlimit*) ;
 int setrlimit (int ,struct rlimit*) ;

int chassis_fdlimit_set(gint64 max_files_number) {
 struct rlimit max_files_rlimit;
 rlim_t soft_limit;
 rlim_t hard_limit;

 if (-1 == getrlimit(RLIMIT_NOFILE, &max_files_rlimit)) {
  return -1;
 }

 soft_limit = max_files_rlimit.rlim_cur;
 hard_limit = max_files_rlimit.rlim_max;

 max_files_rlimit.rlim_cur = max_files_number;
 if (hard_limit < max_files_number) {
  max_files_rlimit.rlim_max = max_files_number;
 }

 if (-1 == setrlimit(RLIMIT_NOFILE, &max_files_rlimit)) {
  return -1;
 }

 return 0;

}
