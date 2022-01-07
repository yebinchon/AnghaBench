
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct sysctl_req {int newptr; scalar_t__ oldptr; } ;


 int assert (int ) ;
 int sysctl_io_number (struct sysctl_req*,int,int,int*,int *) ;

__attribute__((used)) static int
kperf_sysctl_get_set_int(struct sysctl_req *req,
 int (*get)(void), int (*set)(int))
{
 assert(req != ((void*)0));
 assert(get != ((void*)0));
 assert(set != ((void*)0));

 int value = 0;
 if (req->oldptr) {
  value = get();
 }

 int error = sysctl_io_number(req, value, sizeof(value), &value, ((void*)0));

 if (error || !req->newptr) {
  return error;
 }

 return set(value);
}
