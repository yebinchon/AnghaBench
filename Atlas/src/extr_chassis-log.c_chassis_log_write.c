
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int log_file_fd; scalar_t__ event_source_handle; scalar_t__ use_windows_applog; scalar_t__ use_syslog; } ;
typedef TYPE_1__ chassis_log ;
struct TYPE_9__ {int win_evtype; int syslog_lvl; } ;
struct TYPE_8__ {char* str; } ;
typedef TYPE_2__ GString ;


 int G_LOG_ERROR_POSITION ;
 int G_LOG_LEVEL_MASK ;
 int ReportEvent (scalar_t__,int ,int ,int ,int *,int,int ,char**,int *) ;
 int S (TYPE_2__*) ;
 int STDERR_FILENO ;
 int g_bit_nth_lsf (int,int) ;
 TYPE_3__* log_lvl_map ;
 int syslog (int ,char*,char*) ;
 int write (int,char*,...) ;

__attribute__((used)) static int chassis_log_write(chassis_log *log, int log_level, GString *str) {
 if (-1 != log->log_file_fd) {

  if (-1 == write(log->log_file_fd, S(str))) {


   write(STDERR_FILENO, S(str));
   write(STDERR_FILENO, "\n", 1);
  } else {
   write(log->log_file_fd, "\n", 1);
  }
 } else {
  write(STDERR_FILENO, S(str));
  write(STDERR_FILENO, "\n", 1);
 }

 return 0;
}
