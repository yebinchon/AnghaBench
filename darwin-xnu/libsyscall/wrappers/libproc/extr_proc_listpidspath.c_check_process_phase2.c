
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdOpenInfoRef ;


 int check_process_text (int ,int) ;

__attribute__((used)) static int
check_process_phase2(fdOpenInfoRef info, int pid)
{
 int status;


 status = check_process_text(info, pid);
 if (status != 0) {

  return status;
 }

 return 0;
}
