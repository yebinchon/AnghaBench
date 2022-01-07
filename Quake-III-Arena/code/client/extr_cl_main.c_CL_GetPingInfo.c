
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;
struct TYPE_4__ {int info; TYPE_1__ adr; } ;


 int Q_strncpyz (char*,int ,int) ;
 TYPE_2__* cl_pinglist ;

void CL_GetPingInfo( int n, char *buf, int buflen )
{
 if (!cl_pinglist[n].adr.port)
 {

  if (buflen)
   buf[0] = '\0';
  return;
 }

 Q_strncpyz( buf, cl_pinglist[n].info, buflen );
}
