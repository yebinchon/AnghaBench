
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sysctl_req {int newptr; } ;
struct sysctl_oid {int dummy; } ;


 int sysctl_handle_int (struct sysctl_oid*,int*,int ,struct sysctl_req*) ;

__attribute__((used)) static int
sysctl_getset_int( struct sysctl_oid *oidp, struct sysctl_req *req,
                   int (*get_func)(void), int (*set_func)(int) )
{
 int error = 0;
 uint32_t value = 0;


 value = get_func();


 error = sysctl_handle_int(oidp, &value, 0, req);
 if (error || !req->newptr)
  return (error);


 error = set_func( value );

 return error;
}
