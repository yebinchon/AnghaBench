
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;
struct rtstat {int dummy; } ;


 int SYSCTL_OUT (struct sysctl_req*,int *,int) ;
 int rtstat ;

__attribute__((used)) static int
sysctl_rtstat(struct sysctl_req *req)
{
 return (SYSCTL_OUT(req, &rtstat, sizeof (struct rtstat)));
}
