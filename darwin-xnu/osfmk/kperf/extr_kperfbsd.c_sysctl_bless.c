
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct sysctl_req {int newptr; } ;


 int ktrace_get_owning_pid () ;
 int ktrace_set_owning_pid (int) ;
 int sysctl_io_number (struct sysctl_req*,int,int,int*,int *) ;

__attribute__((used)) static int
sysctl_bless(struct sysctl_req *req)
{
 int value = ktrace_get_owning_pid();
 int error = sysctl_io_number(req, value, sizeof(value), &value, ((void*)0));

 if (error || !req->newptr) {
  return error;
 }

 return ktrace_set_owning_pid(value);
}
