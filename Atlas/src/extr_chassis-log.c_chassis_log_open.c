
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_file_fd; int log_filename; } ;
typedef TYPE_1__ chassis_log ;


 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int TRUE ;
 int open (int ,int,int) ;

int chassis_log_open(chassis_log *log) {
 if (!log->log_filename) return TRUE;

 log->log_file_fd = open(log->log_filename, O_RDWR | O_CREAT | O_APPEND, 0660);

 return (log->log_file_fd != -1);
}
