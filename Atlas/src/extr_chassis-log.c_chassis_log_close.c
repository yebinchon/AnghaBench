
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_file_fd; } ;
typedef TYPE_1__ chassis_log ;


 int close (int) ;

int chassis_log_close(chassis_log *log) {
 if (log->log_file_fd == -1) return 0;

 close(log->log_file_fd);

 log->log_file_fd = -1;

 return 0;
}
