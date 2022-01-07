
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int dummy; } ;


 int sysctl_handle_int (struct sysctl_oid*,int *,int ,struct sysctl_req*) ;

__attribute__((used)) static int
sysctl_get_int( struct sysctl_oid *oidp, struct sysctl_req *req,
                uint32_t value )
{
 int error = 0;


 error = sysctl_handle_int(oidp, &value, 0, req);

 return error;
}
