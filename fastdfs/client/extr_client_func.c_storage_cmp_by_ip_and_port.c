
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int storage_cmp_by_ip_and_port(const void *p1, const void *p2)
{
 int res;

 res = strcmp(((ConnectionInfo *)p1)->ip_addr,
   ((ConnectionInfo *)p2)->ip_addr);
 if (res != 0)
 {
  return res;
 }

 return ((ConnectionInfo *)p1)->port -
   ((ConnectionInfo *)p2)->port;
}
