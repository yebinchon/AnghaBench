
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int port; } ;
struct TYPE_6__ {int time; int start; int info; TYPE_3__ adr; } ;
struct TYPE_5__ {int realtime; } ;


 int CL_SetServerInfoByAddress (TYPE_3__,int ,int) ;
 int Cvar_VariableIntegerValue (char*) ;
 char* NET_AdrToString (TYPE_3__) ;
 int Q_strncpyz (char*,char const*,int) ;
 TYPE_2__* cl_pinglist ;
 TYPE_1__ cls ;

void CL_GetPing( int n, char *buf, int buflen, int *pingtime )
{
 const char *str;
 int time;
 int maxPing;

 if (!cl_pinglist[n].adr.port)
 {

  buf[0] = '\0';
  *pingtime = 0;
  return;
 }

 str = NET_AdrToString( cl_pinglist[n].adr );
 Q_strncpyz( buf, str, buflen );

 time = cl_pinglist[n].time;
 if (!time)
 {

  time = cls.realtime - cl_pinglist[n].start;
  maxPing = Cvar_VariableIntegerValue( "cl_maxPing" );
  if( maxPing < 100 ) {
   maxPing = 100;
  }
  if (time < maxPing)
  {

   time = 0;
  }
 }

 CL_SetServerInfoByAddress(cl_pinglist[n].adr, cl_pinglist[n].info, cl_pinglist[n].time);

 *pingtime = time;
}
