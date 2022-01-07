
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;
typedef int should_reset ;


 int KTRACE_KPERF ;
 int ktrace_reset (int ) ;
 int sysctl_io_number (struct sysctl_req*,int,int,int*,int *) ;

__attribute__((used)) static int
sysctl_kperf_reset(struct sysctl_req *req)
{
 int should_reset = 0;

 int error = sysctl_io_number(req, should_reset, sizeof(should_reset),
  &should_reset, ((void*)0));
 if (error) {
  return error;
 }

 if (should_reset) {
  ktrace_reset(KTRACE_KPERF);
 }
 return 0;
}
