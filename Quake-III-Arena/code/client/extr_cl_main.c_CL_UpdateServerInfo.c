
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port; } ;
struct TYPE_3__ {int time; int info; TYPE_2__ adr; } ;


 int CL_SetServerInfoByAddress (TYPE_2__,int ,int ) ;
 TYPE_1__* cl_pinglist ;

void CL_UpdateServerInfo( int n )
{
 if (!cl_pinglist[n].adr.port)
 {
  return;
 }

 CL_SetServerInfoByAddress(cl_pinglist[n].adr, cl_pinglist[n].info, cl_pinglist[n].time );
}
